import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(id: 't1', title: 'Academia', value: 89.9, date: DateTime.now()),
    Transaction(id: 't2', title: 'BJJ', value: 79.9, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Conta de Luz', value: 450.0, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Despesas Pessoais',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                elevation: 5,
                color: Colors.blueAccent,
                child: Text('Gráfico'),
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          padding: EdgeInsets.all(10),
                          child: Text(tr.value.toString())),
                      Column(
                        children: [Text(tr.title), Text(tr.date.toString())],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
