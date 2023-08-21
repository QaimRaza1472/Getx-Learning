import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    var left1=-width1*0.5;

    return Scaffold(
      drawer: const Drawer(),
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
                  Colors.yellow.shade800,
                ],
              ),
            ),
          ),

          /// Elipse 3
          Positioned(
            left:left1,
            top: -width1*0.39,
            child: Container(
              height: width1+width1,
              width: width1+width1,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xdcfdb515),
                    Color(0xdcf4791b),
                    Color(0xdcEA3721),
                    Color(0xdcEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            left: left1,
            top: -width1*0.77,
            child: Container(
              height: width1+width1,
              width: width1+width1,
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
                    Color(0xdcEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            left: left1,
            top: -width1-width1*0.16,
            child: Container(
              height: width1+width1,
              width: width1+width1,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Color(0xfffdb515), blurRadius: 73, spreadRadius: 16, offset: Offset(0, 4))],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xDCFDB515),
                    Color(0xDCF4791B),
                    Color(0xDCEA3721),
                    Color(0xDCEA3721),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: width1 * 0.18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width1 * 0.72, bottom: width1*0.07),
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
                      "Qaim Raza",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
