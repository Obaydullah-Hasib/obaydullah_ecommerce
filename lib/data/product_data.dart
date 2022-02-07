import 'package:obaydullah_ecommerce/model/product_model.dart';

class ProductsData{
  List<ProductModel> Products =[
    ProductModel(
      id: 'Cactus',
      productName: 'Angry Cactus',
      brandname: 'b',
      category: 'plant',
      description: 'blah blah blah',
      imageURL: 'assets/images/angy-cactus.png',
      price: 500,
      quantity: 2,
    ),
    ProductModel(
      id: 'Cactuss',
      productName: 'Angry Cactusss',
      brandname: 'aa',
      category: 'plantt',
      description: 'blah blah asdf',
      imageURL: 'assets/images/angy-cactus.png',
      price: 5000,
      quantity: 4,
    ),


  ];

}

class CategoriData{
  List<CategoriesModel> Categories =[
    CategoriesModel(
      categoryName: 'Plant',
    ),
    CategoriesModel(
      categoryName: 'Food',
    ),
  ];
}
class BrandData{
  List<BrandModel> Brands = [
    BrandModel(
        brandName: 'BCLS'
    ),
    BrandModel(
        brandName: 'Domminos'
    ),
    BrandModel(
        brandName: 'PIzza Factory'
    ),
    BrandModel(
        brandName: 'Cactus BD'
    ),
  ];
}