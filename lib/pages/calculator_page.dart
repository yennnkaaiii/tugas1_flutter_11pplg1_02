import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:testflutter/controller/calculator_controller.dart';
import 'package:testflutter/routes/routes.dart';
import 'package:testflutter/widgets/widgets_button.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton( 
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAllNamed(AppRoutes.login);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextField(
              controller: calculatorController.txtAngka1,
              decoration: const InputDecoration(
                labelText: "Input angka 1",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly], // hanya angka
            ),
            const SizedBox(height: 10),

            TextField(
              controller: calculatorController.txtAngka2,
              decoration: const InputDecoration(
                labelText: "Input angka 2",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly], // hanya angka
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.blue,
                    onPressed: () => calculatorController.tambah(),
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.blue,
                    onPressed: () => calculatorController.kurang(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "X",
                    textColor: Colors.blue,
                    onPressed: () => calculatorController.kali(),
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.blue,
                    onPressed: () => calculatorController.bagi(),
                  ),
                ],
              ),
            ),

            Obx(() => Text(
                  "Hasil: ${calculatorController.hasilJumlah.value}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),

            const SizedBox(height: 15),

            CustomButton(
              text: "Clear",
              textColor: Colors.green,
              onPressed: () => calculatorController.clear(),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
