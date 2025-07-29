import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  TextEditingController txtInput1 = TextEditingController();
  TextEditingController txtInput2 = TextEditingController();
  TextEditingController txtHasil = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
       body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              controller: txtInput1,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              // obscureText: true, // untuk menyembunyikan karakter password
              decoration: InputDecoration(
                labelText: "Input 1",
                hintText: "Enter Input 1",
                border: OutlineInputBorder(), 
              ),
            ),

            SizedBox(height: 10),
            TextField(
              controller: txtInput2,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              // obscureText: true, // untuk menyembunyikan karakter password
              decoration: InputDecoration(
                labelText: "Input 2",
                hintText: "Enter Input 2",
                border: OutlineInputBorder(), 
              ),
            ),

            Row(
              
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //jika username dan password adalah admin maka muncul snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Tambah")),
                          );
                
                        int angka1 = int.tryParse(txtInput1.text) ?? 0;
                         int angka2 = int.tryParse(txtInput2.text) ?? 0;

                         int hasil = angka1 + angka2;
                         txtHasil.text = hasil.toString();
                      },
                      child: Text("+"),
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //jika username dan password adalah admin maka muncul snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Kurang")),
                          );
                
                         int angka1 = int.tryParse(txtInput1.text) ?? 0;
                         int angka2 = int.tryParse(txtInput2.text) ?? 0;

                         int hasil = angka1 - angka2;
                         txtHasil.text = hasil.toString();

                      },
                      child: Text("-"),
                    ),
                  ),
                ),


                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //jika username dan password adalah admin maka muncul snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Kurang")),
                          );
                
                         int angka1 = int.tryParse(txtInput1.text) ?? 0;
                         int angka2 = int.tryParse(txtInput2.text) ?? 0;

                         int hasil = angka1 * angka2;
                         txtHasil.text = hasil.toString();

                      },
                      child: Text("*"),
                    ),
                  ),
                ),


                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //jika username dan password adalah admin maka muncul snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Kurang")),
                          );
                
                         int angka1 = int.tryParse(txtInput1.text) ?? 0;
                         int angka2 = int.tryParse(txtInput2.text) ?? 0;

                         double hasil = angka1 / angka2;
                         txtHasil.text = hasil.toString();

                      },
                      child: Text("/"),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            TextField(
              controller: txtHasil,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              readOnly: true,
              // obscureText: true, // untuk menyembunyikan karakter password
              decoration: InputDecoration(
                labelText: "Hasil",
                border: OutlineInputBorder(), 
              ),
            ),

            Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        //jika username dan password adalah admin maka muncul snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sudah Di Reset")),
                          );
                
                         txtHasil.text = "";
                         txtInput1.text = "";
                         txtInput2.text = "";

                      },
                      child: Text("RESET"),
                    ),
                  ),
                ),

          ],
        )
       )
    );
  }
}