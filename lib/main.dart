import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){ // função principal
    runApp(

        MaterialApp(
          title: "Controle de Pessoas", // propriedade da aba do app

          home: Home(),

        ),
    ); // função que roda o app

  }

  class Home extends StatefulWidget{
    @override
    _HomeState createState () => _HomeState();
  }

  class _HomeState extends State<Home>{
  int _qtdePessoas = 0;
  String _limitPessoas = ("Vazio");

  void _changeQtdePessoas(int variante){
    setState(() {
        _qtdePessoas += variante;
    });
  }

  void _changeText(String variante2){
    setState(() {
      _limitPessoas = variante2;
    });
  }

  @override
  Widget build (BuildContext contex){
    return (

      Stack(
        children: <Widget>[
          Image.asset(
            "images/fundo_supermercado.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center, // alinhamento centralizado
            children: <Widget>[
              Text(
                  "Pessoas: $_qtdePessoas", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.none)
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(10.2),
                    child:
                    FlatButton(
                      child: Text("+1", style: TextStyle(fontSize: 35.0, color: Colors.black),),
                      onPressed:(){

                        if (_qtdePessoas < 5){

                          _changeQtdePessoas(1);
                          _changeText("Pode entrar!");}

                          else{

                          _changeText("Limite Máximo!");}

                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.2),
                    child:
                    FlatButton(
                      child: Text("-1", style: TextStyle(fontSize: 35.0, color: Colors.black),),
                      onPressed:(){

                        if (_qtdePessoas > 0){

                          _changeQtdePessoas(-1);
                          _changeText("Pode entrar!");}

                        else{

                          _changeText("Limite Mínimo!");}

                      },
                    ),
                  ),

                ],

              ),

              Text(
                "$_limitPessoas" , style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 25.0, decoration: TextDecoration.none),
              )

            ],
          ),

        ],
      )

    );

  }

}



