
import 'package:sum_app/sum_app.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _fristTecontroller = TextEditingController();
  TextEditingController _secondTEcontroller = TextEditingController();

    double _result = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
       title: const Text('Calculator'),
         centerTitle: true,
       ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(

              keyboardType: TextInputType.number,
              controller: _fristTecontroller,
            decoration: const InputDecoration(
              hintText: 'Num1'
            ),
            ),
          ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _secondTEcontroller,
            decoration: const InputDecoration(
              hintText: 'Num2'
            ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: ontapAddButton, icon: Icon(Icons.add)),
              IconButton(onPressed: ontapRemoveButton, icon: Icon(Icons.remove)),
              TextButton(onPressed: ontapMultiButton, child: Text(
                '*',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              )),
              TextButton(onPressed: ontapDividerButton, child: Text(
                '/',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              )),
            ],
          ),
          SizedBox(height: 10,),

          SizedBox(
            height:40,
            width: 80,
            child: Text(
              'Result: ${_result.toStringAsFixed(3)}',
            ),
          )
        ],
      ),
    );
  }

  void ontapAddButton (){
    double _fristNum = double.tryParse(_fristTecontroller.text) ??  0;
    double _secondNum = double.tryParse(_secondTEcontroller.text) ??  0;
    _result = _fristNum + _secondNum ;
  setState(() {
  });
  }
  void ontapRemoveButton (){
    double _fristNum = double.tryParse(_fristTecontroller.text) ??  0;
    double _secondNum = double.tryParse(_secondTEcontroller.text) ??  0;
    _result = _fristNum - _secondNum ;
    setState(() {
    });
  }
  void ontapDividerButton (){
    double _fristNum = double.tryParse(_fristTecontroller.text) ??  0;
    double _secondNum = double.tryParse(_secondTEcontroller.text) ??  0;
    _result = _fristNum / _secondNum ;
    setState(() {
    });
  }
  void ontapMultiButton (){
    double _fristNum = double.tryParse(_fristTecontroller.text) ??  0;
    double _secondNum = double.tryParse(_secondTEcontroller.text) ??  0;
    _result = _fristNum * _secondNum ;
    setState(() {
    });
  }


}

