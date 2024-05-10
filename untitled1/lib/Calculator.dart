import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CalculatorScreen(),
    );
  }
}


class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  String? _selectedOperation;
  double? _result;

  void _calculate() {
    final double? firstNumber = double.tryParse(_firstNumberController.text);
    final double? secondNumber = double.tryParse(_secondNumberController.text);

    if (firstNumber != null && secondNumber != null && _selectedOperation != null) {
      switch (_selectedOperation) {
        case '+':
          _result = firstNumber + secondNumber;
          break;
        case '-':
          _result = firstNumber - secondNumber;
          break;
        case '*':
          _result = firstNumber * secondNumber;
          break;
        case '/':
          if (secondNumber != 0) {
            _result = firstNumber / secondNumber;
          } else {
            _result = double.nan; // 0으로 나누기 처리
          }
          break;
      }
    } else {
      _result = null;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('계산기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_result != null)
              Text(
                '정답: $_result',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: _selectedOperation,
                hint: const Text('연산 선택'),
                items: const [
                  DropdownMenuItem(
                    value: '+',
                    child: Text('더하기'),
                  ),
                  DropdownMenuItem(
                    value: '-',
                    child: Text('빼기'),
                  ),
                  DropdownMenuItem(
                    value: '*',
                    child: Text('곱하기'),
                  ),
                  DropdownMenuItem(
                    value: '/',
                    child: Text('나누기'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedOperation = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '첫 번째 숫자',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: '두 번째 숫자',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text('연산하기'),
            ),
          ],
        ),
      ),
    );
  }
}
