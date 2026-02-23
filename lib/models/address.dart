import 'visit.dart';

/// Representa um endereço (número de casa/apartamento)
/// Cada endereço pode ter múltiplas visitas (histórico)
class Address {
  final String id;
  String number; // "29", "29A", "Apt 101"
  DateTime createdAt;
  List<Visit> visits; // ⭐ Histórico de visitas (children)

  Address({
    required this.id,
    required this.number,
    required this.createdAt,
    List<Visit>? visits,
  }) : visits = visits ?? [];

  /// Retorna a última visita (mais recente)
  Visit? get lastVisit => visits.isNotEmpty ? visits.last : null;

  /// Retorna o status atual baseado na última visita
  VisitStatus get currentStatus =>
      lastVisit?.status ?? VisitStatus.unvisited;

  /// Conta o número de visitas
  int get visitCount => visits.length;

  /// Adiciona uma nova visita ao histórico
  void addVisit(Visit visit) {
    visits.add(visit);
  }

  /// Remove uma visita do histórico
  void removeVisit(String visitId) {
    visits.removeWhere((v) => v.id == visitId);
  }

  /// Atualiza uma visita existente
  void updateVisit(Visit updatedVisit) {
    final index = visits.indexWhere((v) => v.id == updatedVisit.id);
    if (index != -1) {
      visits[index] = updatedVisit;
    }
  }

  Address copyWith({
    String? id,
    String? number,
    DateTime? createdAt,
    List<Visit>? visits,
  }) {
    return Address(
      id: id ?? this.id,
      number: number ?? this.number,
      createdAt: createdAt ?? this.createdAt,
      visits: visits ?? this.visits.map((v) => v.copyWith()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'createdAt': createdAt.toIso8601String(),
      'visits': visits.map((v) => v.toJson()).toList(),
    };
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'] as String,
      number: json['number'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      visits: (json['visits'] as List<dynamic>?)
              ?.map((v) => Visit.fromJson(v as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}
