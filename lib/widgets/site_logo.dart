import 'package:flutter/material.dart';

//Index
import '../constant//index.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo(
      {super.key,
      this.onTap}); //Callback opcional es decir se ejecutara cuando el usuario toque el logo.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          //GestureDetector toques, deslizamientos y doble toque.
          onTap: () {}, //callback por el momento vacio.
          child: const Text("Wicked", //child usa muchos widgets contenedores.
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: WickedColors.navbarGreen)),
        ));
  }
}

/*
si un widgets solo puede contener un hijo, usa child,
si puede contener varios hijos usa children

Como sabemos isar el const?, se utiliza cuando no queremos que ese valor se cambie
como el titulo de la pagina wicked, pero si se cambia a futuro no se usa el  const.

*/
