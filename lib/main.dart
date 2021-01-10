import 'package:login_system/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
              child: Column(
        children: <Widget>[
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Ellipse 4fundo.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  height: 210.0,
                  width: 480.0,
                  child: FadeAnimation(
                      1.2,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/balao2.png'))),
                      )),
                ),
                Positioned(
                  left: 190.0,
                  height: 350.0,
                  width: 270.0,
                  child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/balao1.png'))),
                      )),
                ),
                Positioned(
                  child: Container(
                      margin: EdgeInsets.only(top: 50, right: 150),
                      child: Center(
                        child: FadeAnimation(
                          1.4,
                          Text(
                            "Olá,\nSeja\nBem-vindo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                FadeAnimation(
                    1.5,
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(255, 148, 194, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email ou numero de telefone",
                              hintStyle: TextStyle(
                                  fontSize: 18, color: Colors.grey[400]),
                            ))),
                        Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Senha",
                              hintStyle: TextStyle(
                                  fontSize: 18, color: Colors.grey[400]),
                            )))
                      ]),
                    )),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.7,
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(255, 148, 194, 1),
                            Color.fromRGBO(255, 148, 194, .6),
                          ])),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    )),
                SizedBox(
                  height: 70,
                ),
                FadeAnimation(
                    1.8,
                    Text(
                      "Perdeu a Senha?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 148, 194, 1)),
                    ))
              ],
            ),
          )
        ],
      ))),
    );
  }
}
