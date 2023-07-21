import 'package:flutter/material.dart';

void main() {
  runApp(PrimeCheckerApp());
}

class PrimeCheckerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeCheckerScreen(),
    );
  }
}

class PrimeCheckerScreen extends StatefulWidget {
  @override
  _PrimeCheckerScreenState createState() => _PrimeCheckerScreenState();
}

class _PrimeCheckerScreenState extends State<PrimeCheckerScreen> {
  TextEditingController _controller = TextEditingController();
  String _result = '';

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  void _checkPrime() {
    int number = int.tryParse(_controller.text) ?? 0;
    setState(() {
      if (isPrime(number)) {
        _result = '$number là số nguyên tố.';
      } else {
        _result = '$number không phải là số nguyên tố.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiểm tra số nguyên tố'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Hãy điền số'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkPrime,
              child: Text('Kiểm tra'),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

