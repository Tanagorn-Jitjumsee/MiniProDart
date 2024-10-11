class Games {
  int? id;
  String? name;
  String? gdetail;
  String? image;
  String? price;

  Games({this.id, this.name, this.gdetail, this.image, this.price});

  factory Games.fromJson(Map<String, dynamic> json) {
    return Games(
      id: json['id'],
      name: json['name'],
      gdetail: json['gdetail'],
      image: json['image'],
      price: json['price'],
    );
  }

  // Method to convert a ProductDataModel object into a JSON format
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'gdetail': gdetail,
      'image': image,
      'price': price,
    };
  }
}
