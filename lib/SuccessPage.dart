import 'package:flutter/material.dart';
import 'Style.dart';
class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "mont"
      ),
      home: successPage(),
    );
  }
}
class successPage extends StatefulWidget {
  @override
  _successPageState createState() => _successPageState();
}

class _successPageState extends State<successPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,
                    color: greenBtn,
                    size: 100,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Pesanan Sedang Diproses!", style: TextStyle(
                          color: greenBtn,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      ),

                    ],
                  ),
                  SizedBox(height: 5,),
                  Text("Terima Kasih", style: TextStyle(
                      color: greenBtn,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

