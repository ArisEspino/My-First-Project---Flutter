import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/styles/styles.dart';
import 'package:my_flutter_web_app/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      //1. Parametro izq, 2 y 4 up and down y parametro 3, a la derecha.
      margin: const EdgeInsets.fromLTRB(4, 5, 4, 5), // Margen personalizado
      decoration: kHederDecoration,
      child: (Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 15),
        ],
      )),
    );
  }
}
