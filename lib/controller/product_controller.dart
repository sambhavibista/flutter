import 'package:flutter/material.dart';
import 'package:online_shop/model/product.dart';

class ProductController extends ChangeNotifier{
  List<Product> myProduct= [
    Product(
      id: '1',
      name: "Modile Phone",
      quantity: 2,
      price: 16000,
      productImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/CellPhone.jpg/1024px-CellPhone.jpg',
    ),
    Product(
      id: '2',
      name: 'Smart watch',
      quantity: 3,
      price: 9000,
      
      productImage: 'https://i5.walmartimages.com/asr/dda6bc1f-d282-4cf9-ad29-e827222bc4d5.8d402328f4d54e2b9a252879ec51fb79.jpeg',
    ),
    Product(
      id: '3',
      name: 'Laptop',
      quantity: 8,
      price: 80000,
      productImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ35dqJIRJvxJgiCYmG9DtBFCtRnOx3_888A&s',
    ),
    Product(
      id:'4',
      name: "Tablet",
      quantity: 10,
      price: 60000,
      productImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcwLqOQIY4RaRtrlw7XI0AxEB2IWIuegWvSA&s",
    ),

  ];

  void toggleFavorite(int index) {
    myProduct[index].isFavorite = !myProduct[index].isFavorite;
    notifyListeners();
  }

  void toggleAddToCart(int index) {
    myProduct[index].isAddToCart = !myProduct[index].isAddToCart;
  }

  void addProduct(String name, double price, int quantity, String imageUrl) {
    final prodId = DateTime.now().microsecondsSinceEpoch.toString();
    Product newProduct = Product(
        id: prodId,
        productImage: imageUrl,
        name: name,
        price: price,
        quantity: quantity);

    myProduct.add(newProduct);
    notifyListeners();
  }
  void editProduct(
      String id, String name, double price, int quantity, String imageURL) {
    var currentProduct = myProduct.firstWhere((element) => element.id == id);
    int selectedProductIndex = myProduct.indexOf(currentProduct);
    Product editedProduct = Product(
        id: id,
        name: name,
        price: price,
        productImage: imageURL,
        quantity: quantity);

    myProduct[selectedProductIndex] = editedProduct;
    notifyListeners();
  }

  void deleteProduct(String id){
    myProduct.removeWhere((element) => element.id == id);
    notifyListeners();
  
}
}


