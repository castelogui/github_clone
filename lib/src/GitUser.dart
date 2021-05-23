
import 'package:flutter/material.dart';
import 'package:github_clone/src/models/abrirLink.dart';

class GitUser extends StatefulWidget {

  Map<String, dynamic> retorno;
  GitUser(this.retorno);

  @override
  _GitUser createState() => _GitUser();
}

class _GitUser extends State<GitUser> {
  @override
  Widget build(BuildContext context) {
    String login = widget.retorno['login'];
    String avatar_url = widget.retorno['avatar_url'];
    String html_url = widget.retorno['html_url'];
    String followers_url = widget.retorno['followers_url'];
    String following_url = widget.retorno['followers_url'];
    String name = widget.retorno['name'];
    String bio = widget.retorno['bio'];
    String blog = widget.retorno['blog'];
    int public_repos = widget.retorno['public_repos'];
    int public_gists = widget.retorno['public_gists'];
    int followers = widget.retorno['followers'];
    int following = widget.retorno['following'];

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
      body: Container (
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
          child: Column(
            children: [
              Container(
                width: 390,
                height: 210,
                child: Column(
                  children: [
                    Row(
                      children: [
                        //  CONTAINER AVATAR_URL
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(color: Colors.black, spreadRadius: 2)
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      '${avatar_url}'
                                  )
                              )
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Container(
                            width: 150,
                            height: 100,
                            // NOME E USERNAME (LOGIN)
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // NOME
                                Row(
                                  children: [
                                    Expanded(
                                      // Expanded utilizado para quebrar linha automatica ao extourar layout
                                      child: Text(
                                        //name
                                        '${name}',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // LOGIN
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${login}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // BUTTON FOLLOW
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => abrirLink("${html_url}")));
                          },
                          child: Container(
                            width: 65,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigoAccent,
                                boxShadow: [
                                  BoxShadow(color: Colors.black, spreadRadius: 1)
                                ]
                            ),
                          ),
                        )
                      ],
                    ),
                    // FOLLOWERS E FOLLOWINGS
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // FOLLOWERS
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Text(
                                    '${followers}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text(
                                  "followers",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black54
                                  ),
                                ),
                              ],
                            )
                          ),
                          // FOLLOWING
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Text(
                                    "${following}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text(
                                  "following",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "${blog}",
                          ),
                          Text(
                            "${bio}"
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
