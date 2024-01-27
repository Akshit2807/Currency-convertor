import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Currencyconvertermaterialpage extends StatelessWidget{
  const Currencyconvertermaterialpage ({super.key});

  @override
  Widget build(BuildContext context){
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.amberAccent,
        style: BorderStyle.none,
        // strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),

    );
    return Scaffold(
      // backgroundColor: Color.fromARGB(29, 0, 255, 169),
      backgroundColor: const Color.fromARGB(29, 0, 255,255),
      // backgroundColor: const Color.fromARGB(255,0,0,0),//white

      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                  '0',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              // padding: EdgeInsets.all(50),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'enter something',
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.yellowAccent,
                  filled: true,
                  fillColor: Colors.white30,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //button
            //raised
            //appear as a text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
              child: ElevatedButton(
                onPressed: (){
                    if (kDebugMode) {
                      print ('Button clicked');
                    }
                  },
                
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(40),
                  backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                  foregroundColor: MaterialStatePropertyAll(Colors.black87),
                  minimumSize: MaterialStatePropertyAll(
                      Size(double.infinity, 45)
                  ),
                ),
                child: const Text('Click Me !!!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}