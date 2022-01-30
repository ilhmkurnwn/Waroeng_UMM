import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'produk_quantity.dart';
import 'Style.dart';
import 'TotalPage.dart';
import 'HomePage.dart';

final ProdukQuantity jumlah = Get.put(ProdukQuantity());
class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "mont"
      ),
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: openHomePage,
                          padding:
                              EdgeInsets.symmetric(vertical: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Atas Nama",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ilham Kurniawan",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Antar ke :",
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Jln. Raya Tlogomas No.246 Tlogomas, Malang",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Silahkan Memilih Pesanan",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children:[
                        Text("Batagor 3 Rasa",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                      Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                              Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementbatagor(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.batagor.toString()}",
                            style: TextStyle(
                          fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementbatagor(),
                          ),
                        ),
                    ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Boba Bi",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementboba(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.boba.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementboba(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Ayam Geprek",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementgeprek(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.geprek.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementgeprek(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Jus Buah",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementjusbuah(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.jusbuah.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementjusbuah(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Pempek Kapal Selam",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementpempek(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.pempek.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementpempek(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Smoothies",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementsmoothie(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.smoothie.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementsmoothie(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Taro Creamy",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementtaro(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.taro.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementtaro(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children:[
                        Text("Toastie Smith",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child:Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon:
                            Icon(Icons.remove,color: Colors.black),
                            onPressed: () => jumlah.decrementtos(),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Obx(()=> Text("${jumlah.tos.toString()}",
                            style: TextStyle(
                              fontSize: 20,)
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add,color: Colors.black),
                            onPressed: () => jumlah.incrementtos(),
                          ),
                        ),
                      ],
                    ),

                    // placesWidget("pempek", "Pempek Kapal Selam"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: openTotalPage,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: Text(
                          "Check Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void openTotalPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TotalPage()),
    );
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => homePage()));
  }
}
