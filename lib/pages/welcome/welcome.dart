import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Image.asset("assets/images/happy.png", fit: BoxFit.fitWidth,),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),

                      width: 319,
                      height: MediaQuery.of(context).size.height / 3,
                      alignment: Alignment.center,

                      child: const Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("BENVENUTO!",
                              style: TextStyle(
                                letterSpacing: 1.1,
                                fontSize: 25,
                                color: Color.fromRGBO(159, 64, 255, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Io sono Mind, una simpatica lampadina, e ti aiuterò a rimanere concentrato mentre studi. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                            ),
                          )

                        ],
                      )
                  ),

                ],
              ),

              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Image.asset("assets/images/run.png", fit: BoxFit.fitWidth,),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),

                      width: 319,
                      height: MediaQuery.of(context).size.height / 3,
                      alignment: Alignment.center,

                      child: const Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("UNA VASTA SCELTA DI FUNZIONALITA'!", textAlign: TextAlign.center,
                              style: TextStyle(
                                letterSpacing: 1.1,
                                fontSize: 25,
                                color: Color.fromRGBO(159, 64, 255, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Studiando con me potrai prendere appunti, segnare gli obiettivi giorno per giorno e tanto altro ancora! ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )

                        ],
                      )
                  ),

                ],
              ),

              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Image.asset("assets/images/tongue-out.png", fit: BoxFit.fitWidth,),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),

                      width: 319,
                      height: MediaQuery.of(context).size.height / 3,
                      alignment: Alignment.center,

                      child: const Column(

                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("INIZIAMO!",
                              style: TextStyle(
                                letterSpacing: 1.1,
                                fontSize: 25,
                                color: Color.fromRGBO(159, 64, 255, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Se vuoi il mio efficiente aiuto allora dovremmo conoscerci per bene!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )

                        ],
                      )
                  ),

                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
