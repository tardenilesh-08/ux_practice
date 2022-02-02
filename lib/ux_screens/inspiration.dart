import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  State<Inspiration> createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  Widget promoCard(imageName) {
    return AspectRatio(
      aspectRatio: 2.60 / 3,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/inspiration_ux/$imageName.jpg',
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
            ),
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 14, 8, 17).withOpacity(0.9),
                const Color.fromARGB(255, 26, 23, 23).withOpacity(0.1),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.0, 0.3],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find Your',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Cravings ..!!!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Promo Today',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('one'),
                          promoCard('two'),
                          promoCard('three'),
                          promoCard('four'),
                          promoCard('landscape'),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey.withOpacity(0.2),
                        image: const DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/inspiration_ux/five.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 14, 8, 17)
                                  .withOpacity(0.5),
                              const Color.fromARGB(255, 26, 23, 23)
                                  .withOpacity(0.2),
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            stops: const [0.2, 0.5],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Best Desserts',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
