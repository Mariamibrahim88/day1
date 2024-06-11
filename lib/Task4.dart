class Serializable {
  Map<String, dynamic> toJson() {
    return {};
  }
}

class User implements Serializable {
  String name;
  int age;

  User(this.name, this.age);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Product implements Serializable {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
    };
  }
}
