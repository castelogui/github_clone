import 'package:flutter/material.dart';
import 'package:github_clone/GitUser.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  String newUsername = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
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
                    onTap: () async{
                      // ignore: unnecessary_statements
                      setState(() {
                        newUsername = username.text;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GitUser(newUsername)));
                      print(newUsername);
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
    );
  }
}
