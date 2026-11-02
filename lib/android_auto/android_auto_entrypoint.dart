import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import '../models/models.dart';
import '../services/database_service.dart';

class AndroidAutoChannel {
  static const MethodChannel _channel = MethodChannel('field_ministry/android_auto');

  static void configure() {
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'getInterestedCards':
          return _getInterestedCards();
        case 'getBibleStudyCards':
          return _getBibleStudyCards();
        default:
          throw PlatformException(
            code: 'not_implemented',
            message: 'Method not implemented: ${call.method}',
          );
      }
    });
  }

  static Future<List<Map<String, dynamic>>> _getInterestedCards() async {
    final db = await DatabaseService.getInstance();
    final territories = db.getAllTerritories();
    final items = _collectPeopleCards(
      territories: territories,
      mode: _AndroidAutoMode.interested,
    );
    return items;
  }

  static Future<List<Map<String, dynamic>>> _getBibleStudyCards() async {
    final db = await DatabaseService.getInstance();
    final territories = db.getAllTerritories();
    final items = _collectPeopleCards(
      territories: territories,
      mode: _AndroidAutoMode.bibleStudy,
    );
    return items;
  }
}

@pragma('vm:entry-point')
Future<void> androidAutoMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  AndroidAutoChannel.configure();
  await Completer<void>().future;
}

enum _AndroidAutoMode { interested, bibleStudy }

List<Map<String, dynamic>> _collectPeopleCards({
  required List<Territory> territories,
  required _AndroidAutoMode mode,
}) {
  final items = <_AndroidAutoItem>[];

  for (final t in territories) {
    if (t.isArchived) continue;
    for (final s in t.streets) {
      for (final a in s.addresses) {
        final sortedVisits = [...a.visits]..sort((x, y) => x.date.compareTo(y.date));
        if (sortedVisits.isEmpty) continue;

        final anchorIndex = sortedVisits.indexWhere((v) {
          if (mode == _AndroidAutoMode.bibleStudy) {
            return v.status == VisitStatus.bibleStudy;
          }
          return v.status == VisitStatus.interested || v.status == VisitStatus.returnVisit;
        });

        if (anchorIndex == -1) continue;
        final anchor = sortedVisits[anchorIndex];

        final last = _lastRelevantVisit(sortedVisits, anchorIndex) ?? sortedVisits.last;

        final name = _resolvePersonName(a, last) ?? '';
        final displayName = name.trim().isEmpty ? 'Sem nome' : name.trim();

        final navigationQuery = _composeNavigationQuery(
          streetName: s.name,
          number: a.number,
          neighborhood: t.neighborhood,
        );

        items.add(
          _AndroidAutoItem(
            sortDate: anchor.date,
            id: '${t.id}:${s.id}:${a.id}:${anchor.id}',
            title: displayName,
            subtitle: navigationQuery,
            notes: last.notes,
            navigationQuery: navigationQuery,
          ),
        );
      }
    }
  }

  items.sort((a, b) => a.sortDate.compareTo(b.sortDate));

  return items
      .map((e) => {
            'id': e.id,
            'title': e.title,
            'subtitle': e.subtitle,
            'notes': e.notes,
            'navigationQuery': e.navigationQuery,
          })
      .toList();
}

Visit? _lastRelevantVisit(List<Visit> visits, int anchorIndex) {
  for (int i = visits.length - 1; i >= anchorIndex; i--) {
    final v = visits[i];
    final hadInteraction = v.hadInteraction ?? (v.status != VisitStatus.unvisited && !_isNonInteractionStatus(v.status));
    if (hadInteraction) return v;
  }
  return null;
}

bool _isNonInteractionStatus(VisitStatus status) {
  return status == VisitStatus.notHome ||
      status == VisitStatus.notAnswered ||
      status == VisitStatus.emptyHouse;
}

String? _resolvePersonName(Address address, Visit visit) {
  if (visit.personName?.isNotEmpty == true) return visit.personName;

  if (visit.parentId != null) {
    try {
      final parent = address.visits.firstWhere((v) => v.id == visit.parentId);
      if (parent.personName?.isNotEmpty == true) return parent.personName;
    } catch (_) {}
  }

  try {
    return address.visits.firstWhere((v) => v.personName?.isNotEmpty == true).personName;
  } catch (_) {}

  return null;
}

String _composeNavigationQuery({
  required String streetName,
  required String number,
  required String? neighborhood,
}) {
  final base = '${streetName.trim()}, ${number.trim()}';
  final bairro = neighborhood?.trim();
  if (bairro == null || bairro.isEmpty) return base;
  return '$base - $bairro';
}

class _AndroidAutoItem {
  final DateTime sortDate;
  final String id;
  final String title;
  final String subtitle;
  final String? notes;
  final String navigationQuery;

  _AndroidAutoItem({
    required this.sortDate,
    required this.id,
    required this.title,
    required this.subtitle,
    required this.notes,
    required this.navigationQuery,
  });
}
