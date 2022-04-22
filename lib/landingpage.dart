import 'package:flutter/material.dart';

import 'package:posttest4_1915026038_aldiriosetiawan/formpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom:80),
                height: size.height*0.3,
                child: Stack(
                  children: [
                    Container(
                      height: size.height*0.5,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -50,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/home.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
              ),
              
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Proud to Be A\nPet Adopter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const Text(
                "Looking for unconditional love? visit\nthe shelter today!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizeContainer(gambar: "anjing.jpg", size: "Dog"),
                    SizeContainer(gambar: "kucing.jpg", size: "Cat"),
                    SizeContainer(gambar: "kelinci.jpg", size: "Rabbit"),
                  ],
                ),
              ),
              const MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, required this.gambar, required this.size})
      : super(key: key);

  final String gambar;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 85,
      margin: const EdgeInsets.only(left: 10,right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/$gambar")),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Colors.orange,
        ),
      ),
      child: Text(
        size,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: const EdgeInsets.only(top: 50),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const MyHomePage()
              ),
          );
        },
        child: const Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
