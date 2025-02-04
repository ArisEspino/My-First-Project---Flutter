import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/constant/colors.dart';
import 'package:my_flutter_web_app/constant/nav_items.dart';
import 'package:my_flutter_web_app/styles/styles.dart';
import 'package:my_flutter_web_app/widgets/site_logo.dart';

//Widgets sin estado
class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //Espaciador sin contenido.
      height: 50.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHederDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrimary),
                    )))
        ],
      ),
    );
  }
}
