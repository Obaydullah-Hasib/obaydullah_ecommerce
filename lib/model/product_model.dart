class ProductModel{
  String? id;
  String? productName;
  String? imageURL;
  String? description;
  int? price;
  String? category;
  String? brandname;
  int? quantity;

  ProductModel(
      {this.id,
        this.productName,
        this.imageURL,
        this.description,
        this.price,
        this.category,
        this.brandname,
        this.quantity});
}
class CategoriesModel{
  String? categoryName;

  CategoriesModel({this.categoryName});
}
class BrandModel{
  String? brandName;
  BrandModel({this.brandName});
}