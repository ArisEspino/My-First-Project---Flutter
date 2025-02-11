import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/constant/index.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; //Obtiene el ancho y alto de la pantalla.
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight, //altura de la pantalla
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                // ignore: deprecated_member_use
                WickedColors.scaffoldBg.withOpacity(0.6),
                // ignore: deprecated_member_use
                WickedColors.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "lib/assets/wicked-glinda.png",
              width: screenWidth / 2,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          //intro
          const Text(
            "Hi\nI'm Melanie\n A flutter Developer",
            style: TextStyle(
                fontSize: 24.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: WickedColors.textPrimary),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190.0,
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
          //btn
        ],
      ),
    );
  }
}
