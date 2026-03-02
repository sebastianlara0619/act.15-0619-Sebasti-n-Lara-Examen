
import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9C4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF176),
        title: const Text("Confirmar Pedido"),
        actions: const [
          Icon(Icons.info_outline),
          SizedBox(width: 15),
          Icon(Icons.help_outline),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Icon(Icons.shopping_bag_outlined, size: 80, color: Colors.black26),
            const Text("¿Confirmas tu compra en Celulares Lara?", textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context), // Regresa a pantalla 2
                    child: const Text("CANCELAR"),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                    onPressed: () => _showDialog(context),
                    child: const Text("ACEPTAR", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _box(), _box(),
              ],
            )
          ],
        ),
      ),
    );
  } // Fin del método build

  // Las funciones ahora están fuera del método build, pero dentro de la clase
  Widget _box() => Container(width: 100, height: 100, color: Colors.white, child: const Icon(Icons.image, color: Colors.black12));

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        title: const Text("¡Éxito!"),
        content: const Text("Tu celular Lara está en camino."),
        actions: [
          TextButton(onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false), child: const Text("Aceptar"))
        ],
      ),
    );
  }
}
