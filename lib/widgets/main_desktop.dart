import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/constant/index.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi\nI'm Melanie\n A flutter Developer",
                style: TextStyle(
                    fontSize: 30.0,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: WickedColors.textPrimary),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: WickedColors.navbarGreen),
                    onPressed: () {},
                    child: const Text(
                      "Get in touch",
                      style: TextStyle(
                        color: WickedColors.textPrimary,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          ),
          Image.asset(
            "lib/assets/wicked-glinda.png",
          ),
        ],
      ),
    );
  }
}
