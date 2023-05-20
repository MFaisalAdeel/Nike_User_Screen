import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Mypagescreen());
  }
}

class Mypagescreen extends StatelessWidget {
  const Mypagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/Nike.png',
                height: 200,
                width: 200,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.71,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              const Text(
                "Welcome back! You've been missed",
                style: TextStyle(fontSize: 15, color: Colors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "User Name",
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Password"),
                ),
              ),
              MaterialButton(
                child: const Text(
                  "forget Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Sign In"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    fixedSize: const Size(330, 60),
                    textStyle: const TextStyle(fontSize: 20),
                    onPrimary: Colors.white,
                    backgroundColor: Colors.orange),
              ),
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: const Divider(
                      height: 25,
                      thickness: 2,
                      color: Colors.white24,
                    ),
                  ),
                ),
                const Text(
                  "Or Continue with",
                  style: TextStyle(color: Colors.orange),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: const Divider(
                      height: 100,
                      thickness: 2,
                      color: Colors.white24,
                    ),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 4, color: Colors.white60),
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Text(
                          "G",
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),
                        ),
                      )),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 4, color: Colors.white60),
                      color: Colors.grey,
                    ),
                    child: const Icon(
                      Icons.call,
                      size: 80,
                      color: Colors.white60,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
