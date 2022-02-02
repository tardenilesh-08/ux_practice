import 'package:flutter/material.dart';
import 'package:ux_practice/animations/trip_animations.dart';

class TripApp extends StatefulWidget {
  const TripApp({Key? key}) : super(key: key);

  @override
  State<TripApp> createState() => _TripAppState();
}

class _TripAppState extends State<TripApp> {
  late PageController _pageController;
  final String _totalPage = "/ 3";
  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget makePage(imageName, title, description, pageNumber) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/trip_ux/$imageName.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2),
            ],
            begin: Alignment.bottomRight,
            stops: const [
              0.3,
              0.9,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    pageNumber.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _totalPage,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TripAnimation(
                      delay: 2,
                      child: Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TripAnimation(
                      delay: 2,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          const Text(
                            '4.0',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          const Text(
                            ' (2300)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TripAnimation(
                      delay: 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.7),
                              height: 1.9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TripAnimation(
                      delay: 2.2,
                      child: Text(
                        'READ MORE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            'six',
            'USA',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a imperdiet ipsum, at feugiat risus. Proin nec ex lorem. Aenean quis aliquam urna, at porttitor sem. Morbi blandit viverra faucibus.',
            1,
          ),
          makePage(
            'five',
            'INDIA',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a imperdiet ipsum, at feugiat risus. Proin nec ex lorem. Aenean quis aliquam urna, at porttitor sem. Morbi blandit viverra faucibus.',
            2,
          ),
          makePage(
            'four',
            'Australia',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a imperdiet ipsum, at feugiat risus. Proin nec ex lorem. Aenean quis aliquam urna, at porttitor sem. Morbi blandit viverra faucibus.',
            3,
          ),
        ],
      ),
    );
  }
}
