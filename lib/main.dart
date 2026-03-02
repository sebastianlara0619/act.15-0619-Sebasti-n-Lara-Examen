
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importar google_fonts
import 'package:myapp/mispantallas/inicio.dart';
import 'package:myapp/mispantallas/pantalla_2.dart';
import 'package:myapp/mispantallas/pantalla_3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definir el color principal para el tema
    const seedColor = Color(0xFF6A1B9A); // Morado oscuro para un look más definido

    return MaterialApp(
      title: 'Tienda de Celulares',
      debugShowCheckedModeBanner: false,
      
      // Tema de la aplicación directamente en el MaterialApp
      theme: ThemeData(
        useMaterial3: true,
        
        // 1. Esquema de colores generado a partir de un color semilla
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          primary: seedColor,
          secondary: Colors.amber, // Un color de acento
          surface: const Color(0xFFF3E5F5), // Superficie morado claro
          background: const Color(0xFFFDF7FF), 
          brightness: Brightness.light,
        ),

        // 2. Tema de texto usando las fuentes que especificaste
        textTheme: TextTheme(
          displayLarge: GoogleFonts.oswald(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: seedColor,
          ),
          titleLarge: GoogleFonts.roboto(
            fontSize: 22, 
            fontWeight: FontWeight.w500
          ),
          bodyMedium: GoogleFonts.openSans(
            fontSize: 16
          ),
          // Aplicando consistencia a otros estilos de texto
          titleMedium: GoogleFonts.roboto(),
          bodyLarge: GoogleFonts.openSans(),
          labelLarge: GoogleFonts.roboto(fontWeight: FontWeight.bold), // Para botones
        ),

        // 3. Estilos personalizados para componentes específicos
        appBarTheme: AppBarTheme(
          backgroundColor: seedColor,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
          titleTextStyle: GoogleFonts.oswald(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: seedColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: GoogleFonts.roboto( // Estilo de texto del botón actualizado a Roboto
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ), // Fin de ThemeData

      // Las rutas se mantienen igual
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/detalle': (context) => const Pantalla2(),
        '/confirmacion': (context) => const Pantalla3(),
      },
    );
  }
}
