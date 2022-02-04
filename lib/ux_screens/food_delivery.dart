import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ux_practice/animations/food_devlivery_animations.dart';
import 'package:ux_practice/home_pages/food_home_page.dart';

class FoodDelivery extends StatefulWidget {
  const FoodDelivery({Key? key}) : super(key: key);

  @override
  State<FoodDelivery> createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _textVisible = true;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );

    _animation = Tween<double>(
      begin: 1.00,
      end: 25.0,
    ).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then(
          (value) => Navigator.push(
            context,
            PageTransition(
              child: const FoodDeliveryHomePage(),
              type: PageTransitionType.fade,
              curve: Curves.easeIn,
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/food_delivery_ux/one.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FoodDeliveryAnimation(
                  delay: 1,
                  child: Text(
                    'Taking Order For Faster Delivery',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const FoodDeliveryAnimation(
                  delay: 1,
                  child: Text(
                    "See restaurants near by \n adding location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.9,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                FoodDeliveryAnimation(
                  delay: 1.5,
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [Colors.yellow, Colors.orange]),
                      ),
                      child: AnimatedOpacity(
                        opacity: _textVisible ? 1.0 : 0.0,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        child: MaterialButton(
                          elevation: 4,
                          minWidth: double.infinity,
                          onPressed: () => _onTap(),
                          child: const Text(
                            "Start",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FoodDeliveryAnimation(
                  delay: 1.5,
                  child: AnimatedOpacity(
                    opacity: _textVisible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: const Align(
                      child: Text(
                        "Now Deliver to Your Door 24/7",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
