import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/utils/projects_utils.dart';
import 'package:my_flutter_web_app/widgets/actorsDesktop.dart';
import 'package:my_flutter_web_app/widgets/actorsMobile.dart';
import 'package:my_flutter_web_app/widgets/main_mobile.dart';

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
    //constraints nos ayudara en tomar las medidas de nuestra plantalla.
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
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
                  },
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
              //ACTORS
              Container(
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: WickedColors.navbarGreen,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    /* children: [
                    //title
                    const Text(
                      "Social | Actors",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: WickedColors.textPrimary),
                    ),
                    SizedBox(height: 50),
                    //social and actors
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const ActorsDesktop()
                    else
                      const ActorsMobile()
                  ]*/
                  )),

              //Projects_mago_oz
              ProjectCardWidget(
                project: workProjectUtils.first,
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