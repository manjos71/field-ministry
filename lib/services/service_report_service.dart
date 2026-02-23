import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/models.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class ServiceReportService {
  // Generate WhatsApp report message
  static String generateReport({
    required Duration workTime,
    required int totalVisits,
    required int notHomeCount,
    required int interestedCount,
    required int otherStatusCount,
    // Localized strings
    required String fieldServiceReportLabel,
    required String timeWorkedLabel,
    required String totalVisitsLabel,
    required String breakdownLabel,
    required String notHomeLabel,
    required String interestedLabel,
    required String othersLabel,
    required String generatedAtLabel,
  }) {
    final hours = workTime.inHours;
    final minutes = workTime.inMinutes.remainder(60);
    
    final buffer = StringBuffer();
    buffer.writeln('📊 *$fieldServiceReportLabel*');
    buffer.writeln('');
    buffer.writeln('⏱️ *$timeWorkedLabel:* ${hours}h ${minutes}min');
    buffer.writeln('🏠 *$totalVisitsLabel:* $totalVisits');
    buffer.writeln('');
    buffer.writeln('📈 *$breakdownLabel:*');
    buffer.writeln('  • $notHomeLabel: $notHomeCount');
    buffer.writeln('  • $interestedLabel: $interestedCount');
    buffer.writeln('  • $othersLabel: $otherStatusCount');
    buffer.writeln('');
    buffer.writeln('_${generatedAtLabel}_');
    
    return buffer.toString();
  }

  // Generate CSV for "not home" addresses with configurable fields
  static String generateNotHomeCSV(List<NotHomeAddress> addresses, List<String> enabledFields) {
    if (enabledFields.isEmpty) {
      // Default fallback
      enabledFields = ['territory', 'street', 'number', 'date'];
    }

    final buffer = StringBuffer();
    
    // Header
    final header = enabledFields.map((field) {
      switch (field) {
        case 'territory': return 'Território';
        case 'street': return 'Rua';
        case 'number': return 'Número';
        case 'date': return 'Data';
        case 'time': return 'Hora';
        case 'notes': return 'Notas';
        default: return '';
      }
    }).where((h) => h.isNotEmpty).join(',');
    
    buffer.writeln(header);
    
    // Data
    for (var addr in addresses) {
      final row = enabledFields.map((field) {
        switch (field) {
          case 'territory': return _escapeCsv(addr.territoryName);
          case 'street': return _escapeCsv(addr.streetName);
          case 'number': return _escapeCsv(addr.addressNumber);
          case 'date': return addr.date;
          case 'time': return addr.time;
          case 'notes': return _escapeCsv(addr.notes ?? '');
          default: return '';
        }
      }).join(',');
      buffer.writeln(row);
    }
    
    return buffer.toString();
  }

  static String _escapeCsv(String value) {
    if (value.contains(',') || value.contains('"') || value.contains('\n')) {
      return '"${value.replaceAll('"', '""')}"';
    }
    return value;
  }

  /// Parse a CSV string (previously exported by generateNotHomeCSV) back to a list.
  /// Returns a map with keys matching the header row, and a list of rows.
  static Map<String, dynamic> parseNotHomeCSV(String csvContent) {
    final lines = csvContent.split('\n').where((l) => l.trim().isNotEmpty).toList();
    if (lines.isEmpty) return {'headers': <String>[], 'rows': <Map<String, String>>[]};

    final headers = _parseCsvRow(lines.first);
    final rows = <Map<String, String>>[];

    for (int i = 1; i < lines.length; i++) {
      final values = _parseCsvRow(lines[i]);
      final row = <String, String>{};
      for (int j = 0; j < headers.length && j < values.length; j++) {
        row[headers[j]] = values[j];
      }
      rows.add(row);
    }

    return {'headers': headers, 'rows': rows};
  }

  static List<String> _parseCsvRow(String row) {
    final result = <String>[];
    final buffer = StringBuffer();
    bool inQuotes = false;

    for (int i = 0; i < row.length; i++) {
      final char = row[i];
      if (char == '"') {
        if (inQuotes && i + 1 < row.length && row[i + 1] == '"') {
          buffer.write('"');
          i++;
        } else {
          inQuotes = !inQuotes;
        }
      } else if (char == ',' && !inQuotes) {
        result.add(buffer.toString());
        buffer.clear();
      } else {
        buffer.write(char);
      }
    }
    result.add(buffer.toString());
    return result;
  }

  // Send report to WhatsApp
  static Future<void> sendToWhatsApp(String message, String phoneNumber) async {
    // Clean phone number
    final cleanPhone = phoneNumber.replaceAll(RegExp(r'\D'), '');
    final finalPhone = cleanPhone.length <= 11 ? '55$cleanPhone' : cleanPhone;
    
    // URL encode the message
    final encodedMessage = Uri.encodeComponent(message);
    final uri = Uri.parse("https://wa.me/$finalPhone?text=$encodedMessage");
    
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  // Download CSV (Web support)
  static void downloadCSV(String content, String fileName) {
    if (kIsWeb) {
      final bytes = utf8.encode(content);
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: url)
        ..setAttribute("download", fileName)
        ..click();
      html.Url.revokeObjectUrl(url);
    }
  }
  
  // Collect session data from territories
  static SessionReport collectSessionData({
    required List<Territory> territories,
    required DateTime sessionStart,
    required Duration workTime,
  }) {
    int totalVisits = 0;
    int notHomeCount = 0;
    int interestedCount = 0;
    int otherCount = 0;
    List<NotHomeAddress> notHomeAddresses = [];
    
    for (var territory in territories) {
      for (var street in territory.streets) {
        for (var address in street.addresses) {
          for (var visit in address.visits) {
            // Only count visits from this session
            if (visit.date.isAfter(sessionStart)) {
              totalVisits++;
              
              switch (visit.status) {
                case VisitStatus.notHome:
                  notHomeCount++;
                  notHomeAddresses.add(NotHomeAddress(
                    territoryName: territory.name,
                    streetName: street.name,
                    addressNumber: address.number,
                    date: DateFormat('dd/MM/yyyy').format(visit.date),
                    time: DateFormat('HH:mm').format(visit.date),
                    notes: visit.notes,
                  ));
                  break;
                case VisitStatus.interested:
                  interestedCount++;
                  break;
                default:
                  otherCount++;
              }
            }
          }
        }
      }
    }
    
    return SessionReport(
      workTime: workTime,
      totalVisits: totalVisits,
      notHomeCount: notHomeCount,
      interestedCount: interestedCount,
      otherStatusCount: otherCount,
      notHomeAddresses: notHomeAddresses,
    );
  }
}

class SessionReport {
  final Duration workTime;
  final int totalVisits;
  final int notHomeCount;
  final int interestedCount;
  final int otherStatusCount;
  final List<NotHomeAddress> notHomeAddresses;

  SessionReport({
    required this.workTime,
    required this.totalVisits,
    required this.notHomeCount,
    required this.interestedCount,
    required this.otherStatusCount,
    required this.notHomeAddresses,
  });
}

class NotHomeAddress {
  final String territoryName;
  final String streetName;
  final String addressNumber;
  final String date;
  final String time;
  final String? notes;

  NotHomeAddress({
    required this.territoryName,
    required this.streetName,
    required this.addressNumber,
    required this.date,
    required this.time,
    this.notes,
  });
}


