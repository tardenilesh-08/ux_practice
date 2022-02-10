// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ux_practice/animations/food_devlivery_animations.dart';

class PartyHomePage extends StatefulWidget {
  const PartyHomePage({Key? key}) : super(key: key);

  @override
  State<PartyHomePage> createState() => _PartyHomePageState();
}

class _PartyHomePageState extends State<PartyHomePage>
    with SingleTickerProviderStateMixin {
  //const PartyHomePage({Key? key}) : super(key: key);
  AnimationController? _scaleController;

  Animation<double>? _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    _scaleAnimation =
        Tween<double>(begin: 1.00, end: 30.00).animate(_scaleController!)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {}
          });
  }

  @override
  void dispose() {
    super.dispose();
    _scaleController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/party_ux/bear.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.3),
              ],
              begin: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FoodDeliveryAnimation(
                delay: 2,
                child: Text(
                  "Find Best Places Near You For Great Night",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FoodDeliveryAnimation(
                delay: 1.2,
                child: Text(
                  "Let us find you an event for your interest",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              FoodDeliveryAnimation(
                delay: 1.5,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      hide = true;
                    });
                    _scaleController!.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController!,
                    builder: (context, child) => Transform.scale(
                      scale: _scaleAnimation!.value,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[700],
                        ),
                        child: hide == false
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    "Find nearest event",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              )
                            : Container(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
