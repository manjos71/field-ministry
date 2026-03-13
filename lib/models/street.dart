import 'address.dart';
import 'visit.dart';

/// Representa uma rua dentro de um território
class Street {
  final String id;
  String name;
  DateTime createdAt;
  List<Address> addresses;

  Street({
    required this.id,
    required this.name,
    required this.createdAt,
    List<Address>? addresses,
  }) : addresses = addresses ?? [];

  /// Conta o total de endereços
  int get addressCount => addresses.length;

  /// Conta endereços visitados
  int get visitedCount => addresses
      .where((a) => a.currentStatus != VisitStatus.unvisited)
      .length;

  /// Porcentagem de progresso
  double get progress =>
      addressCount > 0 ? visitedCount / addressCount : 0.0;

  /// Adiciona um endereço
  void addAddress(Address address) {
    addresses.add(address);
    _sortAddresses();
  }

  /// Remove um endereço
  void removeAddress(String addressId) {
    addresses.removeWhere((a) => a.id == addressId);
  }

  /// Ordena endereços por número
  void _sortAddresses() {
    addresses.sort((a, b) {
      // Tenta ordenar numericamente, se possível
      final numA = int.tryParse(a.number.replaceAll(RegExp(r'[^0-9]'), ''));
      final numB = int.tryParse(b.number.replaceAll(RegExp(r'[^0-9]'), ''));
      if (numA != null && numB != null) {
        return numA.compareTo(numB);
      }
      return a.number.compareTo(b.number);
    });
  }

  /// Gera endereços automaticamente
  void generateAddresses({
    required int from,
    required int to,
    bool oddOnly = false,
    bool evenOnly = false,
  }) {
    final existingNumbers = addresses.map((a) => a.number).toSet();

    for (var i = from; i <= to; i++) {
      if (oddOnly && i.isEven) continue;
      if (evenOnly && i.isOdd) continue;
      
      final numberStr = i.toString();
      if (existingNumbers.contains(numberStr)) continue;

      final address = Address(
        id: '${id}_$i', // Simple ID for generated addresses
        number: numberStr,
        createdAt: DateTime.now(),
      );
      addresses.add(address);
    }
    _sortAddresses();
  }

  Street copyWith({
    String? id,
    String? name,
    DateTime? createdAt,
    List<Address>? addresses,
  }) {
    return Street(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      addresses: addresses ?? this.addresses.map((a) => a.copyWith()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'addresses': addresses.map((a) => a.toJson()).toList(),
    };
  }

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((a) => Address.fromJson(a as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}
