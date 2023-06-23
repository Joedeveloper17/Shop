import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'controller/card_controller.dart';
import 'controller/shop_controller.dart';

class Shoppingpage extends StatelessWidget {

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

   Shoppingpage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: Scaffold(
        drawer: Drawer(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) {
            return
              Column(
                children: [
                  ListTile(
                    title: Text('Name'),
                    subtitle: Text('phonenumeber'),
                    trailing: Image.network('https://th.bing.com/th/id/OIP.64GEkhZ7oG2up_WZ-E2lRgHaE8?w=234&h=180&c=7&r=0&o=5&pid=1.7'),

                    
                  ),
               
                ],

              );
          
          

          })),
        ),
        
        
        appBar: AppBar(title: Text('Shopping App'),),
        
        body:
         Column(
          
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.product.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                     SizedBox(
                                      height: 80,
                                      width: 50,
                                      
                                       child: ClipRRect(
                                        
                                     borderRadius: BorderRadius.circular(20.0),
                                     
                                     child: Image.network(controller.product[index].image),
                                     
                                     
                                     
                                     ),
                                     ),

                                      Text(
                                        '${controller.product[index].productName}',
                                        style: TextStyle(fontSize: 24,color: Colors.black),
                                      ),
                                      Text(
                                          '${controller.product[index].productnameDescription}',
                                          style: TextStyle(fontSize: 24,color: Colors.pinkAccent),
                                      ),
                                    ],
                                  ),
                                  
                                  Text('${controller.product[index].price}',
                                      style: TextStyle(fontSize: 24,color: Colors.orange)),
                                      
                                ],
                                
                              ),
                                TextButton(
                                onPressed: () {
                                  cartController
                                      .addCart(controller.product[index]);
                                },
                                
                                child: Text('Add to Cart'),
                              ),
                              Obx(() => IconButton(
                                    icon: controller
                                            .product[index].isFavorite.value
                                        ? Icon(Icons.check_box_rounded)
                                        : Icon(Icons
                                            .check_box_outline_blank_outlined),
                                    onPressed: () {
                                      controller.product[index].isFavorite
                                          .toggle();
                                    },
                                  )
                                  
                          )],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          
          
            GetX<CartController>(builder: (controller) {
              return Text(
                'Total amount: \$ ${controller.totalPrice}',
                style: TextStyle(fontSize: 32, color: Colors.black),
              );
            }),
            SizedBox(height: 100),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.amber,
          icon: Icon(
            Icons.add_shopping_cart_rounded,
            color: Colors.black,
          ),
          label: GetX<CartController>(builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 24),
            );
          }),
        ),
             
      ),
    );
        
      
  }
}