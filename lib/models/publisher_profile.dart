/// Tipo de publicador/pioneiro
enum PublisherType {
  publisher,       // Publicador - escolhe suas horas
  auxiliaryPioneer, // Pioneiro Auxiliar - 15 ou 30 horas
  regularPioneer,   // Pioneiro Regular - 50 horas
}

/// Alvo de horas para Pioneiro Auxiliar
enum AuxiliaryPioneerTarget {
  hours15,  // 15 horas
  hours30,  // 30 horas
}

/// Modelo do perfil do publicador
class PublisherProfile {
  final PublisherType type;
  final int? customTargetHours; // Para publicador
  final AuxiliaryPioneerTarget? auxiliaryTarget; // Para pioneiro auxiliar
  final int creditHours; // Crédito de horas de trabalho voluntário (para pioneiro regular)

  const PublisherProfile({
    this.type = PublisherType.publisher,
    this.customTargetHours,
    this.auxiliaryTarget,
    this.creditHours = 0,
  });

  /// Obtém o alvo de horas do mês baseado no tipo
  int get monthlyTargetHours {
    switch (type) {
      case PublisherType.publisher:
        return customTargetHours ?? 0;
      case PublisherType.auxiliaryPioneer:
        return auxiliaryTarget == AuxiliaryPioneerTarget.hours30 ? 30 : 15;
      case PublisherType.regularPioneer:
        return 50;
    }
  }

  /// Total de horas considerando crédito
  int get effectiveTargetHours {
    if (type == PublisherType.regularPioneer) {
      return monthlyTargetHours - creditHours;
    }
    return monthlyTargetHours;
  }

  /// Nome legível do tipo de publicador
  String get typeName {
    switch (type) {
      case PublisherType.publisher:
        return '@Publicador';
      case PublisherType.auxiliaryPioneer:
        return '@Pioneiro Auxiliar';
      case PublisherType.regularPioneer:
        return '@Pioneiro Regular';
    }
  }

  PublisherProfile copyWith({
    PublisherType? type,
    int? customTargetHours,
    AuxiliaryPioneerTarget? auxiliaryTarget,
    int? creditHours,
  }) {
    return PublisherProfile(
      type: type ?? this.type,
      customTargetHours: customTargetHours ?? this.customTargetHours,
      auxiliaryTarget: auxiliaryTarget ?? this.auxiliaryTarget,
      creditHours: creditHours ?? this.creditHours,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type.index,
      'customTargetHours': customTargetHours,
      'auxiliaryTarget': auxiliaryTarget?.index,
      'creditHours': creditHours,
    };
  }

  factory PublisherProfile.fromJson(Map<String, dynamic> json) {
    return PublisherProfile(
      type: PublisherType.values[json['type'] ?? 0],
      customTargetHours: json['customTargetHours'],
      auxiliaryTarget: json['auxiliaryTarget'] != null 
          ? AuxiliaryPioneerTarget.values[json['auxiliaryTarget']] 
          : null,
      creditHours: json['creditHours'] ?? 0,
    );
  }
}

/// Planejamento de serviço para um dia específico
class ServicePlan {
  final DateTime date;
  final double plannedHours; // Horas planejadas para o dia

  const ServicePlan({
    required this.date,
    required this.plannedHours,
  });

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'plannedHours': plannedHours,
    };
  }

  factory ServicePlan.fromJson(Map<String, dynamic> json) {
    return ServicePlan(
      date: DateTime.parse(json['date']),
      plannedHours: (json['plannedHours'] as num).toDouble(),
    );
  }
}
