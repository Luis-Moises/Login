import 'package:flutter/material.dart';

import 'login_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Center(child: Contenido())
        ],
      ),
    );
  }
}


// Fondo

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(200, 254, 65, 33),
            Color.fromARGB(200, 244, 242, 64),
            Color.fromARGB(200, 254, 65, 33)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
      ),
    );
  }
} 







//Contenido

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),

          const Text('Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 50,),

          Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(  
            style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
          ),
            onPressed: () {},
            child: const Text(
              'Inicia Sesión',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
          ),
        ),

          //boton
        ],
      ),
    );
  }
}