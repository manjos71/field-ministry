import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'visit.g.dart';

/// Gênero da pessoa
enum Gender {
  male,   // Masculino
  female, // Feminino
}

extension GenderExtension on Gender {
  String get label {
    switch (this) {
      case Gender.male:
        return 'Masculino';
      case Gender.female:
        return 'Feminino';
    }
  }
}

/// Categoria da pessoa
enum PersonCategory {
  young,      // Jovem
  adult,      // Adulto
  elderly,    // Idoso
}

extension PersonCategoryExtension on PersonCategory {
  String get label {
    switch (this) {
      case PersonCategory.young:
        return 'Jovem';
      case PersonCategory.adult:
        return 'Adulto';
      case PersonCategory.elderly:
        return 'Idoso';
    }
  }

  String getIcon([SkinTone? tone]) {
    switch (this) {
      case PersonCategory.young:
        return '👶';
      case PersonCategory.adult:
        return '👨';
      case PersonCategory.elderly:
        return '👴';
    }
  }

  /// Retorna o caminho do ícone baseado no gênero e categoria
  String getIconPath(Gender? gender) {
    // Sufixo de idade: 'old' para idoso, 'now' para os demais
    final ageSuffix = this == PersonCategory.elderly ? 'old' : 'now';
    
    // Prefixo de gênero: 'card_male', 'card_female' ou 'card_couple' (se tivéssemos essa opção no enum Gender, mas Couple é categoria no conceito antigo. 
    // O usuário pediu Gênero separado. 'Couple' (Casal) sumiu? 
    // O usuário removeu 'Couple' e 'Family' na mensagem anterior? "Tirar não interessado... definir genero masculino, Feminino".
    // Se a pessoa visita um Casal, qual o gênero? Talvez deva manter 'Casal' como uma opção de gênero ou categoria especial?
    // Vou assumir que Casal continua sendo uma Categoria se o usuário não pediu para remover, mas ele disse "definir genero".
    // Se o usuário selecionar Masculino/Feminino, usamos os icons específicos.
    // Se não selecionar (null), poderíamos usar um genérico.
    
    String genderPrefix = 'card_male'; // Default
    if (gender == Gender.female) {
      genderPrefix = 'card_female';
    } 
    // Se quisermos suportar Casal, precisaríamos ver onde ele se encaixa.
    // Por enquanto, vou focar em Male/Female como pedido.
    
    return 'assets/icons/${genderPrefix}_${ageSuffix}.png';
  }
}


/// Tom de pele
enum SkinTone {
  light,
  medium,
  dark,
}

/// Status possíveis para uma visita
enum VisitStatus {
  unvisited, // Não visitado
  notHome, // Ninguém em casa
  notAnswered, // Não atendeu (Antigo Não interessado)
  noTime, // Sem tempo
  interested, // Interessado
  doNotCall, // Não visitar
  emptyHouse, // Casa vazia
  answered, // Atendeu
  letterLeft, // Deixou publicação
  returnVisit, // Revisita
  otherLanguage, // Outro idioma
  bibleStudy,   // Estudo Bíblico
}

extension VisitStatusExtension on VisitStatus {
  String get label {
    switch (this) {
      case VisitStatus.unvisited:
        return 'Não visitado';
      case VisitStatus.notHome:
        return 'Ninguém em casa';
      case VisitStatus.notAnswered:
        return 'Não atendeu';
      case VisitStatus.noTime:
        return 'Sem tempo';
      case VisitStatus.interested:
        return 'Interessado';
      case VisitStatus.doNotCall:
        return 'Não visitar';
      case VisitStatus.emptyHouse:
        return 'Casa vazia';
      case VisitStatus.answered:
        return 'Atendeu';
      case VisitStatus.letterLeft:
        return 'Deixou publicação';
      case VisitStatus.returnVisit:
        return 'Revisita';
      case VisitStatus.otherLanguage:
        return 'Outro idioma';
      case VisitStatus.bibleStudy:
        return 'Estudo Bíblico';
    }
  }

  String get icon {
    switch (this) {
      case VisitStatus.unvisited:
        return '⬜';
      case VisitStatus.notHome:
        return '🏠';
      case VisitStatus.notAnswered:
        return '✋';
      case VisitStatus.noTime:
        return '⏰';
      case VisitStatus.interested:
        return '✅';
      case VisitStatus.doNotCall:
        return '🚫';
      case VisitStatus.emptyHouse:
        return '🏚️';
      case VisitStatus.answered:
        return '👍';
      case VisitStatus.letterLeft:
        return '📄';
      case VisitStatus.returnVisit:
        return '🔄';
      case VisitStatus.otherLanguage:
        return '🌐';
      case VisitStatus.bibleStudy:
        return '📖';
    }
  }
  
  Color get color {
    switch (this) {
       case VisitStatus.notAnswered:
         return Colors.orange;
       case VisitStatus.answered:
         return Colors.green;
       case VisitStatus.otherLanguage:
         return Colors.purple;
       default:
         return Colors.grey;
    }
  }
}

/// Representa uma visita a um endereço
@HiveType(typeId: 2) // Mantendo typeId se existir adaptador
class Visit {
  @HiveField(0)
  final String id;
  @HiveField(1)
  DateTime date;
  @HiveField(2)
  VisitStatus status;
  @HiveField(3)
  String? notes;
  @HiveField(4)
  String? personName;
  @HiveField(5)
  String? phoneNumber;
  @HiveField(6)
  PersonCategory? personCategory;
  @HiveField(7)
  SkinTone? personSkinTone; // Mantendo para compatibilidade, mas icons png não usam tint?
                            // O usuário pediu icones diferentes.
  @HiveField(8)
  Gender? gender; // Novo campo

  Visit({
    required this.id,
    required this.date,
    required this.status,
    this.notes,
    this.personName,
    this.phoneNumber,
    this.personCategory,
    this.personSkinTone,
    this.gender,
  });

  Visit copyWith({
    String? id,
    DateTime? date,
    VisitStatus? status,
    String? notes,
    String? personName,
    String? phoneNumber,
    PersonCategory? personCategory,
    SkinTone? personSkinTone,
    Gender? gender,
  }) {
    return Visit(
      id: id ?? this.id,
      date: date ?? this.date,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      personName: personName ?? this.personName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      personCategory: personCategory ?? this.personCategory,
      personSkinTone: personSkinTone ?? this.personSkinTone,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'status': status.index,
      'notes': notes,
      'personName': personName,
      'phoneNumber': phoneNumber,
      'personCategory': personCategory?.index,
      'personSkinTone': personSkinTone?.index,
      'gender': gender?.index,
    };
  }

  factory Visit.fromJson(Map<String, dynamic> json) {
    return Visit(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      status: VisitStatus.values[json['status'] as int],
      notes: json['notes'] as String?,
      personName: json['personName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      personCategory: json['personCategory'] != null 
          ? PersonCategory.values[json['personCategory'] as int]
          : null,
      personSkinTone: json['personSkinTone'] != null
          ? SkinTone.values[json['personSkinTone'] as int]
          : null,
      gender: json['gender'] != null
          ? Gender.values[json['gender'] as int]
          : null,
    );
  }
}
