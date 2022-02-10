import 'package:flutter/material.dart';
import 'package:ux_practice/animations/food_devlivery_animations.dart';

class PartyEvents extends StatelessWidget {
  const PartyEvents({Key? key}) : super(key: key);

  Widget eventItem({image, date}) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Text(
                date.toString(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 10, 7, 14),
                ),
              ),
              const Text(
                "DEC",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/party_ux/$image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.5),
                    ],
                    begin: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Bumbershoot 2022",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "19:00",
                          style: TextStyle(
                            color: Colors.white,
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FoodDeliveryAnimation(
                delay: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Search Event",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'one', date: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'two', date: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'three', date: 19),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'four', date: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'five', date: 21),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: eventItem(image: 'six', date: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
