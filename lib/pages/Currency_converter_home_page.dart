import 'package:flutter/material.dart';
class Currencyconvertermaterialpage extends StatefulWidget {
  const Currencyconvertermaterialpage({super.key});
  @override
  State<Currencyconvertermaterialpage> createState()
  => _Currencyconvertermaterialpage();
}

class _Currencyconvertermaterialpage
    extends State<Currencyconvertermaterialpage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    print('built fn');
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
      // backgroundColor: const Color.fromARGB(170, 0, 255, 169),
      backgroundColor: const Color.fromARGB(29, 0, 255,255),
      // backgroundColor: const Color.fromARGB(255,0,0,0),//white

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 29, 29),
        centerTitle: true,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color: Colors.green,
          ),
        ),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            //------------------Center Number-------------------------//
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                 'INR $result' ,
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            //------------------Entry Box-----------------------------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // padding: EdgeInsets.all(50),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD 💸',
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
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //------------------Convert Button-------------------------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result = double.parse(textEditingController.text) * 83.11;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.yellow),
                  foregroundColor: (Colors.black87),
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),

          ],
        ),
      ),
    );
  }

}

// class Currencyconvertermaterialpagee extends StatelessWidget{
//   const Currencyconvertermaterialpagee ({super.key});
//
//
//   @override
//   Widget build(BuildContext context){
//
//   }
// }