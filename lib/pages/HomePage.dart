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
    //constraints nos ayudara en tomar las medidas de nuestra plantalla.
    return LayoutBuilder(builder: (context, constraints) {
      final screenSize = MediaQuery.of(context).size;
      final screenWidth = screenSize.width;
      final screenHeight = screenSize.height;
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
              //  MainDesktop(),
              Container(
                height: screenHeight,
                margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                constraints: BoxConstraints(minHeight: 560.0),
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
                        width: screenWidth / 4,
                      ),
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
              ),

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