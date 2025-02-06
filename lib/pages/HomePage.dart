import 'package:flutter/material.dart';

//Index
import '../constant/index.dart';
import '../widgets/index.dart';

//Widgets con estado es decir regresa o hace (evento, interaccion del usuario, ect)
class HomePage extends StatefulWidget {
  const HomePage({super.key});
//State maneja los cambios
  @override
  State<HomePage> createState() => _HomePageState();
  // createState() crea el estado _HomePageState, donde se define la interfaz.
}

//Los widgets se organizan en un arbol de widgets.
//_HomePageState es el estado de homePage.
//build(BuildContext se ejecuta para construir la UI.
class _HomePageState extends State<HomePage> {
  final scaffoldKey =
      GlobalKey<ScaffoldState>(); //usamos una key para utilizar el sidebar
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //constraints nos ayudara en tomar las medidas de nuestra plantalla.
      return Scaffold(
          key: scaffoldKey, //Llamamos en nuestro Scaffold.
          backgroundColor: WickedColors.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const SideBarMobile(),
          //Estructura base de la pantalla.
          body: ListView(
            //Para usar mas widgets
            scrollDirection: Axis.vertical, // Indica que el scroll es vertical.
            children: [
              //Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer(); //llamamos
                    }),
              //Skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: WickedColors.scaffoldBg,
              ),
              //Projects
              SizedBox(
                height: 500,
                width: double.maxFinite,
              ),
              //Contact
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //Footer
              SizedBox(
                height: 500,
                width: double.maxFinite,
              )
            ],
          ));
    });
  }
}


/*
Widgets mas usado 

text,
container, -> Un bloque que puede tener color, tamaño y bordes.
row/column, -> Organiza elementos horizontales o verticalmente.
scaffold, -> Esctructura base de una pantalla con AppBar, body, etc.
appBar, -> Barra superior de una pantalla.
ElevatedButton, -> Boton con efecto de elevacion.
Image, -> Muesta imagenes desde la red o assets.
ListView, -> Lista desplazable de elementos.
TextField, -> Campo de entrada de texto.
GestureDetector -> Detecta gestos del usuario (tap, swipe, etc)
 */