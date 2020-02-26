import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta Repondida # 01!');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      setState(() {
        perguntaSelecionada++;
      });
    };
  }

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é a seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: funcaoQueRetornaUmaOutraFuncao(),
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () => setState(() => perguntaSelecionada++),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}