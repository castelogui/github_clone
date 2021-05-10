import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_clone/components/infoUser.dart';

class GitUser extends StatelessWidget {

  const GitUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/logo-buscagit-w.png',
              width: 150,
            ),
            Image.asset(
              'images/logo-github-wt.png',
              width: 45,
            ),
          ],
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
          child: Column(
            children: [
              Container(
                width: 380,
                height: 270,
                child: infoUser()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
