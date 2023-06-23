import 'package:get/get.dart';
import 'package:getx/model/product.dart';

class ShoppingController extends GetxController{
  var  product =<Product>[].obs;

  @override
  void onInit() {
   super.onInit();
   fetchProduct();
  }
  
    void fetchProduct() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          image: 'https://th.bing.com/th/id/OIP.64GEkhZ7oG2up_WZ-E2lRgHaE8?w=234&h=180&c=7&r=0&o=5&pid=1.7',

          total:17,
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'shoe'),
         
     Product(
          id: 1,
          image: 'https://th.bing.com/th/id/OIP.i3A68YOaeKJvLzd9fe3C7AHaEo?pid=ImgDet&rs=1',
          
          price: 50, total:17,
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'SecondProd'),
      Product(
          id: 1,
          price: 89, total:17,
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          image: 'https://th.bing.com/th/id/OIP._QcGzpaUkLUQi96ZIjEsYwHaEK?pid=ImgDet&w=6000&h=3376&rs=1',
          productName: 'thirdProd'),
          Product(
          id: 1,
          price: 90, total:17,
          image: 'https://th.bing.com/th/id/OIP.64GEkhZ7oG2up_WZ-E2lRgHaE8?w=234&h=180&c=7&r=0&o=5&pid=1.7',
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'FourProd'),
          Product(
          id: 1,
          price: 30, total:17,image: 'https://th.bing.com/th/id/OIP.64GEkhZ7oG2up_WZ-E2lRgHaE8?w=234&h=180&c=7&r=0&o=5&pid=1.7',
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'FourProd'),
          Product(
            image: 'https://th.bing.com/th/id/OIP.QdlJEi-eqT531zf0hSWvUwHaE8?pid=ImgDet&rs=1',
          id: 1,
          price: 30, total:17,
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'FourProd'),
          Product(
            image: 'https://th.bing.com/th/id/OIP.QdlJEi-eqT531zf0hSWvUwHaE8?pid=ImgDet&rs=1',
          id: 1,
          price: 30, total:17,
          productnameDescription: 'some description about product',
          productnameImage: 'abd',
          productName: 'FourProd'),
    ];

    product.value = productResult;
  }
  }
