import 'package:flutter/material.dart';
import 'package:testflutter/controller/calculator_controller.dart';
import 'package:testflutter/routes/routes.dart';
import 'package:testflutter/widgets/widgets_button.dart';
import 'package:testflutter/widgets/widgets_textField.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator"),),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextField(textEditingController: calculatorController.txtAngka1, labelText: "input angka 1"),
            MyTextField(textEditingController: calculatorController.txtAngka2, labelText: "input angka 2"),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(text: "+", textColor: Colors.blue, onPressed: () {
                    calculatorController.tambah();
                  },),
                  CustomButton(text: "-", textColor: Colors.blue, onPressed: () {
                    calculatorController.kurang();
                  },),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(text: "X", textColor: Colors.blue, onPressed: () {
                    calculatorController.kali();
                  },),
                  CustomButton(text: "/", textColor: Colors.blue, onPressed: () {
                    calculatorController.bagi();
                  },),
                ],
              ),
            ),
            Obx(() => Text("Hasil "+calculatorController.hasilJumlah.value)),
            CustomButton(text: "Clear", textColor: Colors.green, onPressed: () {
              calculatorController.clear();
            },),
            CustomButton(text: "move yo footballplayers", textColor: Colors.green, onPressed: () {
              Get.offAllNamed(AppRoutes.footballplayers);
            }, )
      
          ],
        ),
      ),
    );
  }
}