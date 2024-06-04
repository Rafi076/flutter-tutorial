import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _numOneTextEditingController =
      TextEditingController();
  final TextEditingController _numTwoTextEditingController =
      TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _numOneTextEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'x'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _numTwoTextEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'y'),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 8.0, // gap between adjacent buttons
              runSpacing: 8.0, // gap between lines
              children: [
                ElevatedButton.icon(
                    onPressed: _add,
                    icon: const Icon(Icons.add),
                    label: const Text('Add')),
                ElevatedButton.icon(
                    onPressed: _sub,
                    icon: const Icon(Icons.remove),
                    label: const Text('Sub')),
                ElevatedButton.icon(
                    onPressed: _mul,
                    icon: const Icon(Icons.star),
                    label: const Text('Multiply')),
                ElevatedButton.icon(
                    onPressed: _div,
                    icon: const Icon(Icons.diversity_1),
                    label: const Text('Divide')),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Result: $_result')
          ],
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numOneTextEditingController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTextEditingController.text) ?? 0;
    setState(() {
      _result = numberOne + numberTwo;
    });
  }

  void _sub() {
    double numberOne = double.tryParse(_numOneTextEditingController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTextEditingController.text) ?? 0;
    setState(() {
      _result = numberOne - numberTwo;
    });
  }

  void _mul() {
    double numberOne = double.tryParse(_numOneTextEditingController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTextEditingController.text) ?? 0;
    setState(() {
      _result = numberOne * numberTwo;
    });
  }

  void _div() {
    double numberOne = double.tryParse(_numOneTextEditingController.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTextEditingController.text) ?? 0;
    setState(() {
      _result = numberTwo != 0 ? numberOne / numberTwo : double.infinity; // Handle division by zero
    });
  }

  @override
  void dispose() {
    _numOneTextEditingController.dispose();
    _numTwoTextEditingController.dispose();
    super.dispose();
  }
}
