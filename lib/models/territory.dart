import 'street.dart';

/// Representa um território
class Territory {
  final String id;
  String name;
  String? neighborhood; // Bairro
  DateTime createdAt;
  DateTime? updatedAt;
  bool isArchived;
  List<Street> streets;
  String? notes;
  String? imagePath;

  Territory({
    required this.id,
    required this.name,
    this.neighborhood,
    required this.createdAt,
    this.updatedAt,
    this.isArchived = false,
    List<Street>? streets,
    this.notes,
    this.imagePath,
  }) : streets = streets ?? [];

  /// Conta o total de ruas
  int get streetCount => streets.length;

  /// Conta o total de endereços em todas as ruas
  int get totalAddresses =>
      streets.fold(0, (sum, street) => sum + street.addressCount);

  /// Conta o total de endereços visitados
  int get totalVisited =>
      streets.fold(0, (sum, street) => sum + street.visitedCount);

  /// Porcentagem de progresso do território
  double get progress =>
      totalAddresses > 0 ? totalVisited / totalAddresses : 0.0;

  /// Adiciona uma rua
  void addStreet(Street street) {
    streets.add(street);
    updatedAt = DateTime.now();
  }

  /// Remove uma rua
  void removeStreet(String streetId) {
    streets.removeWhere((s) => s.id == streetId);
    updatedAt = DateTime.now();
  }

  /// Encontra uma rua pelo ID
  Street? findStreet(String streetId) {
    try {
      return streets.firstWhere((s) => s.id == streetId);
    } catch (_) {
      return null;
    }
  }

  Territory copyWith({
    String? id,
    String? name,
    String? neighborhood,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isArchived,
    List<Street>? streets,
    String? notes,
    String? imagePath,
  }) {
    return Territory(
      id: id ?? this.id,
      name: name ?? this.name,
      neighborhood: neighborhood ?? this.neighborhood,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isArchived: isArchived ?? this.isArchived,
      streets: streets ?? this.streets.map((s) => s.copyWith()).toList(),
      notes: notes ?? this.notes,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'neighborhood': neighborhood,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'isArchived': isArchived,
      'streets': streets.map((s) => s.toJson()).toList(),
      'notes': notes,
      'imagePath': imagePath,
    };
  }

  factory Territory.fromJson(Map<String, dynamic> json) {
    return Territory(
      id: json['id'] as String,
      name: json['name'] as String,
      neighborhood: json['neighborhood'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
      isArchived: json['isArchived'] as bool? ?? false,
      streets: (json['streets'] as List<dynamic>?)
              ?.map((s) => Street.fromJson(s as Map<String, dynamic>))
              .toList() ??
          [],
      notes: json['notes'] as String?,
      imagePath: json['imagePath'] as String?,
    );
  }
}
