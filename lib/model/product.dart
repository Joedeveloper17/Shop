import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product{
   final int id;
   final String productName;
  final String productnameImage;
  final String productnameDescription;
   final double total;
   
   final String image;
  
  final double price;
  Product(
    {
      required this.id,
      required this.productName,
      required this.image,
      required this.productnameImage,
      required this.productnameDescription,
      required this.price,
         required this.total,
        
    }
  );
 
final isFavorite=false.obs;
final quantity=1.obs;


}