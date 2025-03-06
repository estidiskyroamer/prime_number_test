import 'package:flutter/material.dart';

class PrimeNumberPage extends StatefulWidget {
  const PrimeNumberPage({super.key});

  @override
  State<PrimeNumberPage> createState() => _PrimeNumberPageState();
}

class _PrimeNumberPageState extends State<PrimeNumberPage> {
  final primeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: [
            const Text("Bilangan Prima", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            const Text("masukkan angka untuk menghasilkan bilangan prima"),
            TextField(
              controller: primeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Input Angka"),
                hintText: "Email Address",
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.green),
              onPressed: (){
                generatePrime(int.parse(primeController.text));
              }, 
              child: const Text("GENERATE BILANGAN PRIMA"),),
          ],
        ),
      ),
    );
  }

  void generatePrime(int amount){
    
  }
  
}