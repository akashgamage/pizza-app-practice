import 'package:pizza_repository/src/entities/macros_entity.dart';
import 'package:pizza_repository/src/models/macros.dart';

class PizzaEntity {
  String pizzaId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String descripion;
  double price;
  double discount;
  List<Macros> macros;

  PizzaEntity({
    required this.pizzaId,
    required this.picture,
    required this.isVeg,
    required this.spicy,
    required this.name,
    required this.descripion,
    required this.price,
    required this.discount,
    required this.macros,
  });

  Map<String, Object?> toDocument() {
    return {
      'pizzaId': pizzaId,
      'picture': picture,
      'isVeg': isVeg,
      'spicy': spicy,
      'name': name,
      'descripion': descripion,
      'price': price,
      'discount': discount,
      'macros': macros.map((macro) => macro.toEntity().toDocument()),
    };
  }

  static PizzaEntity fromDocument(Map<String, dynamic> doc) {
    return PizzaEntity(
      pizzaId: doc['pizzaId'],
      picture: doc['picture'],
      isVeg: doc['isVeg'],
      spicy: doc['spicy'],
      name: doc['name'],
      descripion: doc['descripion'],
      price: doc['price'],
      discount: doc['discount'],
      macros: doc['macros']
          .map((e) => Macros.fromEntity(MacrosEntity.fromDocument(e))),
    );
  }
}
