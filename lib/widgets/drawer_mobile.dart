import 'package:flutter/material.dart';

import 'package:my_flutter_web_app/constant/index.dart';

//Index

class SideBarMobile extends StatelessWidget {
  const SideBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: WickedColors.scaffoldBg,
      child: ListView(
        children: [
          Align(
            //alinea con el padding
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(); //metodo for close sideBar
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: const TextStyle(
                  color: WickedColors.navbarGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              onTap: () {},
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
