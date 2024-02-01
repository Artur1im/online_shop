class ShopModel {
  int id;
  String name;
  String price;
  String img;

  ShopModel(this.id, this.name, this.price, this.img);

  ShopModel.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        price = data['price'],
        img = data['img'];

  static List<ShopModel> fromJsonToList(Map<String, dynamic> data) {
    List<ShopModel> response = [];
    for (Map<String, dynamic> item in data['']) {
      response.add(ShopModel.fromJson(item));
    }
    return response;
  }
}
