import 'package:delivery_app_emilio_puigcerver/componets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}
//sivre para el apartado de pagar con tarjeta
class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  //el usuario quiere pagar
  void userTappedPay () {
    if(formKey.currentState!.validate()) {
      //solo muestra el dialogo cuando el formulario sea valido
      showDialog(
        context: context,
         builder: (context) => AlertDialog(
          title: const Text("Confirmar pago"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Número de tarjeta:$cardNumber"),
                Text("Fecha de expiración:$expiryDate"),
                Text("Titular de la tarjeta:$cardHolderName"),
                Text("CVV$cvvCode"),
              ],
            ),
          ),
          actions: [
            //botón de cancelar
            TextButton(onPressed: () => Navigator.pop(context),
            child: const Text ("cancelar"),
            ),

            //botón de si
            TextButton(onPressed: () {
              Navigator.pop(context);
              Navigator.push (
              context,
              MaterialPageRoute(
                builder: (context) => DeliveryProgressPage(),
                ),
            );
            },
            child:const Text("si"),
            )
          ],
        ),
    );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text ("Caja"),
      ),
      body: Column(
        children: [
          //tarjeta de credito
          CreditCardWidget(
            cardNumber: cardNumber, 
            expiryDate: expiryDate, 
            cardHolderName: cardHolderName,
             cvvCode: cvvCode,
              showBackView: isCvvFocused,
               onCreditCardWidgetChange: (p0) {},
               ),
               //formulario de tarjeta de credito
               CreditCardForm(
                cardNumber: cardNumber, 
                expiryDate: expiryDate, 
                cardHolderName: cardHolderName, 
                cvvCode: cvvCode, 
                onCreditCardModelChange: (data){
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                }, 
                formKey: formKey
              ),
              const Spacer(),

              MyButton(onTap: userTappedPay, 
              text: "Pagar ahora"
              ),
              const SizedBox(height: 25),
        ],
      ),
    );

  }
}