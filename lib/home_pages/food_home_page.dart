import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ux_practice/animations/food_devlivery_animations.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({Key? key}) : super(key: key);

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  Widget foodCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.yellow[700] : Colors.white,
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget foodItem({
    imageName,
    title,
    price,
  }) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image:
                  AssetImage('assets/images/food_delivery_ux/$imageName.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1)
                ],
                stops: const [0.2, 0.9],
                begin: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: const Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FoodDeliveryAnimation(
                      delay: 1,
                      child: Text(
                        "Food Delivery",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FoodDeliveryAnimation(
                            delay: 1,
                            child: foodCategory(
                              isActive: true,
                              title: "Pizza",
                            ),
                          ),
                          FoodDeliveryAnimation(
                            delay: 1.3,
                            child: foodCategory(
                              isActive: false,
                              title: "Burger",
                            ),
                          ),
                          FoodDeliveryAnimation(
                            delay: 1.4,
                            child: foodCategory(
                              isActive: false,
                              title: "Kebab",
                            ),
                          ),
                          FoodDeliveryAnimation(
                            delay: 1.5,
                            child: foodCategory(
                              isActive: false,
                              title: "Dessert",
                            ),
                          ),
                          FoodDeliveryAnimation(
                            delay: 1.6,
                            child: foodCategory(
                              isActive: false,
                              title: "Salad",
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
            FoodDeliveryAnimation(
              delay: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Free Delivery',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FoodDeliveryAnimation(
                      delay: 1.4,
                      child: foodItem(
                        imageName: 'one',
                        price: 15,
                        title: 'American Burger',
                      ),
                    ),
                    FoodDeliveryAnimation(
                      delay: 1.4,
                      child: foodItem(
                        imageName: 'two',
                        price: 25,
                        title: 'Indian Biryani',
                      ),
                    ),
                    FoodDeliveryAnimation(
                      delay: 1.4,
                      child: foodItem(
                        imageName: 'three',
                        price: 10,
                        title: 'French Dessert',
                      ),
                    ),
                    FoodDeliveryAnimation(
                      delay: 1.4,
                      child: foodItem(
                        imageName: 'four',
                        price: 35,
                        title: 'Chinese Sushi',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
