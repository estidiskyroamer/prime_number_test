import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prime_number_test/prime/prime.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("coffee-cup.png")),
            const Text("Let's meet our summer coffee drinks", textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green, 
                textStyle: const TextStyle(color: Colors.white), minimumSize: const Size(double.infinity, 50)),
              onPressed: (){
                inspect('test');
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PrimeNumberPage()));
              }, 
              child: const Text("GET STARTED"),),
          ],
        ),
    ),);
  }
}