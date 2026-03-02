
import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    // Se recuperan los argumentos (nombre e imagen) enviados desde la pantalla de inicio
    final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>? ?? {};
    final String productName = arguments['name'] ?? 'Detalle del Producto';
    final String productImg = arguments['img'] ?? '';

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Azul pastel
      appBar: AppBar(
        backgroundColor: const Color(0xFFBBDEFB), // Azul más oscuro
        // El título ahora muestra el nombre del producto dinámicamente
        title: Text(productName),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 15),
          Icon(Icons.share),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // La imagen ahora es dinámica
            if (productImg.isNotEmpty)
              Image.network(
                productImg, 
                height: 250, 
                fit: BoxFit.contain,
                errorBuilder: (c, e, s) => const Icon(Icons.phone_android, size: 150, color: Colors.grey),
              )
            else 
              const Icon(Icons.phone_android, size: 150, color: Colors.grey),

            const SizedBox(height: 20),
            const Text(
              "Descripción detallada del equipo: Pantalla AMOLED y batería de larga duración.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC8E6C9), // Botón Verde
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () => Navigator.pushNamed(context, '/confirmacion'),
              child: const Text("PROCEDER A COMPRA", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

