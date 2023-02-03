import 'package:flutter/material.dart';
import 'package:education_app/screens/screens.dart';

class WelcomeScreen extends StatelessWidget {
  static const String route = 'welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return Material(
      child: SizedBox(
        width: sizeWidth,
        height: sizeHeight,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: sizeWidth,
                  height: sizeHeight / 1.6,
                  decoration: const BoxDecoration(
                    color: Color(0xff674aef),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/books.png',
                      scale: 0.8,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: sizeWidth,
                height: sizeHeight / 2.666,
                decoration: const BoxDecoration(
                  color: Color(0xff674aef),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: sizeWidth,
                height: sizeHeight / 2.666,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Learning is Everything',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Learning with Pleasure Dear Programmer, wherever you are.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff674aef),
                        ),
                        onPressed: () {
                          Navigator.push(context, _createRoute());
                        },
                        child: const Text(
                          'Get Start',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 1200),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curveAnimation =
          CurvedAnimation(parent: animation, curve: Curves.easeInOut);
      // return SlideTransition(
      //   position:
      //       Tween<Offset>(begin: const Offset(0.5, 1.0), end: Offset.zero)
      //           .animate(curveAnimation),
      //   child: child,
      // );

      // return ScaleTransition(
      //     scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
      //     child: child);

      // return RotationTransition(
      //     turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
      //     child: child);

      // return FadeTransition(
      //     opacity:
      //         Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
      //     child: child);

      //ahora usaremos una combinacion de las 2 transicionces
      return RotationTransition(
        turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
  );
}
