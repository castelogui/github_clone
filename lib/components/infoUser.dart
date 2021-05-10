import 'package:flutter/material.dart';

// ignore: camel_case_types
class infoUser extends StatelessWidget {
  const infoUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                //container da imagem
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 2)
                    ],
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        //colocar o link do perfil do usuario
                        //avatar url
                          'https://avatars.githubusercontent.com/u/48875867?v=4'
                      )
                    )
                  ),
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              // Expanded utilizado para quebrar linha automatica ao extourar layout
                              child: Text(
                                //name
                                "Guilherme Castelo",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              //login
                              "castelogui",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                        child: Text(
                                          "20",
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
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: Text(
                                        "20",
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
                                )
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    width: 180,
                    height: 100,
                  ),
                ),
                Container(
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
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
