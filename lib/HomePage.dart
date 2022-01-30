import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'Style.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: black,
                        image: DecorationImage(
                            image: AssetImage("img/logo.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Halo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                Text(
                                  "Ilham Kurniawan",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: openCartPage,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: greenBtn),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            " Pesan Sekarang",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "List Menu",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        placesWidget("boba", " Boba Bi", "15.000"),
                        placesWidget("Geprek", " Ayam Geprek", "10.000"),
                        placesWidget("tos", " Toastie Smith", "15.000"),
                        placesWidget("batagor", " Batagor 3 Rasa", "10.000"),
                        placesWidget("JusBuah", " Jus Buah", "10.000"),
                        placesWidget("pempek", " Pempek Kapal Selam", "20.000"),
                        placesWidget("smoothie", " Smoothies", "15.000"),
                        placesWidget("TaroCreamy", " Taro Creamy", "10.000"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row placesWidget(String img, String name, String harga) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("img/$img.png"))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                " Rp.$harga,00",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void openCartPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartPage()));
  }

}
