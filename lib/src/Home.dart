import 'package:flutter/material.dart';
import 'package:github_clone/src/GitUser.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  String newUsername = '';

  _obterRequesicao(String user)async{
    var url = Uri.https('api.github.com', '/users/${user}');

    http.Response resposta = await http.get(url);
    if(resposta.statusCode == 200) {
      Map<String, dynamic> retorno = json.decode(resposta.body);
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => GitUser(retorno)));
      });

    }else{
      print(resposta.body);
      throw 'Erro, solicitação nao atendida';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo-buscagit.png', width: 280,),
                Image.asset('images/logo-github.png', width: 180,),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Username:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black
                        ),
                      ),
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'Usuario: '
                          ),
                        ),
                        width: 225,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // ignore: unnecessary_statements
                          setState(() {
                            newUsername = username.text;
                            print(newUsername);
                          });
                          _obterRequesicao(newUsername);
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            width: 200,
                            height: 40,
                            child: Center(
                              child: Text(
                                'Buscar',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
