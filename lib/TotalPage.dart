import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasbesarkbt/SuccessPage.dart';
import 'package:tugasbesarkbt/produk_quantity.dart';
import 'CartPage.dart';
import 'Style.dart';

final ProdukQuantity jumlah = Get.put(ProdukQuantity());

class TotalPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "mont"
      ),
      home: totalPage(),
    );
  }
}

class totalPage extends StatefulWidget {
  @override
  _totalPageState createState() => _totalPageState();
}

class _totalPageState extends State<totalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(150),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/logo.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Atas Nama : Ilham Kurniawan",
                      style:
                      TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Kirim Ke : Jln. Raya Tlogomas No.246 Tlogomas, Malang",
                      style:
                      TextStyle(
                          fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total Pesanan",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal Pesananan ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Obx(()=>Text("Rp. "+"${jumlah.total.toString()}"+".000",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                        )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biaya Pengiriman ",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                          ),
                        ),
                        Text(
                          "Rp. 12.000",
                          style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Potongan Ongkir",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                          ),
                        ),
                        Text(
                          "-Rp. 10.000",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Yang Harus Dibayar",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        Obx(()=>Text("Rp. "+"${jumlah.checkout.toString()}"+".000",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    InkWell(
                      onTap: openSuccessPage,
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
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
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

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }

  void openCartPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartPage()));
  }
}
