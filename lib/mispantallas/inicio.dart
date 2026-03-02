
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE1BEE7),
        title: const Text('Celulares Lara'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // DATOS DEL ALUMNO (CORREGIDO)
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: const Color(0xFFD1C4E9),
            child: const Text(
              "Sebastián LAra 6-J", // Texto actualizado
              textAlign: TextAlign.center, // Sintaxis corregida
              style: TextStyle(fontWeight: FontWeight.bold), // Sintaxis corregida
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                // URLs de imágenes corregidas para que sean funcionales
                _buildCard(context, "iPhone 15 Pro", "\$22,000", "https://raw.githubusercontent.com/ArizCor/MIS-IMAGENES-CODIGO/main/Celulares/c1.png"),
                _buildCard(context, "Samsung S24 Ultra", "\$21,500", "https://raw.githubusercontent.com/ArizCor/MIS-IMAGENES-CODIGO/main/Celulares/c2.png"),
                _buildCard(context, "Xiaomi 14 Pro", "\$15,000", "https://raw.githubusercontent.com/ArizCor/MIS-IMAGENES-CODIGO/main/Celulares/c3.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String name, String price, String url) {
    return Card(
      child: ListTile(
        leading: Image.network(url, width: 50, errorBuilder: (c,e,s) => const Icon(Icons.phone_android)),
        title: Text(name),
        subtitle: Text(price),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.pushNamed(context, '/detalle', arguments: {'name': name, 'img': url}),
      ),
    );
  }
}