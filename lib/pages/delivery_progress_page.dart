import 'package:delivery_app_emilio_puigcerver/componets/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:const Text("Entrega en curso..."),
      backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
      );
  }
}