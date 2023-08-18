import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            height: height1,
            width: width1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red.shade500,
                  Colors.yellow.shade900,
                  Colors.yellow.shade900,
                  Colors.yellow.shade700,
                ],
              ),
            ),
          ),

          /// Elipse 3
          Positioned(
            // left: -150,
            // top: -20,
            /// ok
            left: -145,
            //top: -40,

            //left: -width1*0.31,

            //top: -height1*0.16,
            top: -width1 * 0.33,
            child: Container(
              height: 710,
              width: 710,

              ///ok
              //height: height1*0.8,
              //width: height1*0.8,

              //height: height1*0.99,
              //width: height1*.99,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xdcfdb515),
                    Color(0xdcf4791b),
                    Color(0xdcEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Check Your Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          /// Elipse 2
          Positioned(
            //left: -150,
            //top: -165,

            /// ok
            //left: -140,
            left: -145,
            //top: -200,

            //left: -width1*0.31,

            //top: -height1*0.3,
            top: -width1 * 0.66,
            child: Container(
              height: 710,
              width: 710,
              /// ok
              //height: height1*0.8,
              //width: height1*0.8,

              //height: height1*0.99,
              //width:  height1*0.99,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Color(0xfffdb515), blurRadius: 73, spreadRadius: 16, offset: Offset(0, 4))],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xdcfdb515),
                    Color(0xdcf4791b),
                    Color(0xdcEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Check Your Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),


          /// Elipse 1
          Positioned(
            //left: -150,
            //top: -330,

            ///ok
            //left: -140,
            left: -145,
            //top:-360 ,

            //left: -width1*0.31,

            //top: -height1*0.44,
            top: -width1 * 0.99,
            child: Container(
              //height: height1*0.4,
              //width: width1,
              //height: 530,
              //width: 606,

              height: 710,
              width: 710,
              //height: height1*0.99,
              //width: height1*0.99,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Color(0xfffdb515), blurRadius: 73, spreadRadius: 16, offset: Offset(0, 4))],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xdcfdb515),
                    Color(0xdcf4791b),
                    Color(0xdcEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width1 * 0.75, bottom: width1 * 0.045),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                            },
                          ),
                          const SizedBox(width: 7),
                          const Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Images/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 3,
                          top: 60,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/Images/camera.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Imran Mahmood",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "Lahore, Pakistan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
