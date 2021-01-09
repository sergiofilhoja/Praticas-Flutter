import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Meu Primeiro App'),
      ),
      body: Column(
        children: <Widget>[
          Exemplo(
            title: 'Texto 1',
            onPress: () {
              print('Clicou no item 1');
            },
          ),
          Exemplo(
            title: 'Texto 2',
            onPress: () {
              print('Clicou no item 2');
            },
          )
        ],
      ),
    ));
  }
}

// Componente interno de exemplo
class Exemplo extends StatelessWidget {
  Exemplo({
    @required this.title,
    // @required torna o item obrigatorio, para usar o componente tem que passar os dois que possuem @required
    @required this.onPress
  });

  var title;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    // titulo exemplo caso o parametro titlo nao seja usado
    if (title == null) {
      title = 'Titulo de exemplo';
    }

    return Container(
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(title),
        FlatButton(
          child: Text("Clique aqui"),
          onPressed: onPress,
        )
      ]),
    );
  }
}
