import 'package:flutter/material.dart';
import 'package:github_clone/GitUser.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      controller: _userName,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          color: Colors.black
                      ),
                    ),
                    width: 225,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => GitUser()
                ));
              },
              child: Container(
                width: 225,
                height: 50,
                child: Center(
                  child: Text(
                   'Buscar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.indigoAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
