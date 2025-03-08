import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimeNumberPage extends StatefulWidget {
  const PrimeNumberPage({super.key});

  @override
  State<PrimeNumberPage> createState() => _PrimeNumberPageState();
}

class _PrimeNumberPageState extends State<PrimeNumberPage> {
  final primeController = TextEditingController();
  List<String> primeNumbers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(width: double.infinity,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.mugHot, color: Colors.green,), 
              Padding(padding: EdgeInsets.all(4)),
              Text("Test Apps", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: [
            const Text("Bilangan Prima", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
            const Padding(padding: EdgeInsets.all(8)),
            const Text("Masukkan angka untuk menghasilkan bilangan prima", style: TextStyle(fontSize: 16),),
            const Padding(padding: EdgeInsets.all(8)),
            TextField(
              controller: primeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Input Angka"),
                hintText: "Email Address",
              ),
            ),
            const Padding(padding: EdgeInsets.all(8)),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.green),
              onPressed: (){
                setState(() {
                  primeNumbers = generatePrime(int.parse(primeController.text));
                });
              }, 
              child: const Text("GENERATE BILANGAN PRIMA"),),
            Container(padding: const EdgeInsets.all(16), child: Text(primeNumbers.join(', '), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),)
          ],
        ),
      ),
    );
  }

  generatePrime(int amount){
    List<String> numbers = [];
    bool isPrime = false;
    for(var i = 0; i <= amount; i++){
      numbers.add(i.toString());
    }
    return numbers;
  }
  
}