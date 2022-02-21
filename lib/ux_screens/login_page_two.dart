import 'package:flutter/material.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({Key? key}) : super(key: key);

  @override
  State<LoginPageTwo> createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange.shade900,
              Colors.orange.shade800,
              Colors.orange.shade400,
            ],
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 84, 27, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey.shade200),
                                  ),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone Number",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey.shade200),
                                  ),
                                ),
                                child: const TextField(
                                  // obscuringCharacter: "*",
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ButtonTheme(
                          child: ElevatedButton(
                              // ignore: prefer_const_constructors
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.orange,
                                ),
                                elevation: MaterialStateProperty.all(
                                  10.0,
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(150, 50)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Continue with social media",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                child: ElevatedButton(
                                  // ignore: prefer_const_constructors
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Colors.blue,
                                    ),
                                    elevation: MaterialStateProperty.all(
                                      10.0,
                                    ),
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(100, 50)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    // Replace with a Row for horizontal icon + text
                                    children: const <Widget>[
                                      Icon(Icons.facebook),
                                      Text(
                                        "  Facebook",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: ButtonTheme(
                              // height: 50,
                              buttonColor: Colors.black,
                              child: ElevatedButton(
                                // ignore: prefer_const_constructors
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(
                                    10.0,
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(100, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.black,
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  // Replace with a Row for horizontal icon + text
                                  children: const <Widget>[
                                    Icon(Icons.filter_b_and_w_rounded),
                                    Text(
                                      "  Github",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
