import 'package:get/get.dart';

class ProdukQuantity extends GetxController{
  var batagor = 0.obs;
  var boba = 0.obs;
  var geprek = 0.obs;
  var jusbuah = 0.obs;
  var pempek = 0.obs;
  var smoothie = 0.obs;
  var taro = 0.obs;
  var tos = 0.obs;

  int get sumBatagor=> batagor.value*10;
  int get sumBoba=> boba.value*15;
  int get sumGeprek=> geprek.value*10;
  int get sumJus=> jusbuah.value*10;
  int get sumPempek=> pempek.value*20;
  int get sumSmoothie=> smoothie.value*15;
  int get sumTaro=> taro.value*10;
  int get sumTos=> tos.value*15;

  int get total=> sumBatagor+sumBoba+sumGeprek+sumJus+sumPempek+sumSmoothie+sumTaro+sumTos;
  int get checkout => total+2;

  incrementbatagor(){ batagor.value++; }
  decrementbatagor(){ if(batagor.value >0)
    {
      batagor.value--;
    }
  }
  incrementboba(){ boba.value++; }
  decrementboba(){ if(boba.value >0)
  {
    boba.value--;
  }
  }
  incrementgeprek(){ geprek.value++; }
  decrementgeprek(){ if(geprek.value >0)
  {
    geprek.value--;
  }
  }
  incrementjusbuah(){ jusbuah.value++; }
  decrementjusbuah(){ if(jusbuah.value >0)
  {
    jusbuah.value--;
  }
  }
  incrementpempek(){ pempek.value++; }
  decrementpempek(){ if(pempek.value >0)
  {
    pempek.value--;
  }
  }
  incrementsmoothie(){ smoothie.value++; }
  decrementsmoothie(){ if(smoothie.value >0)
  {
    smoothie.value--;
  }
  }
  incrementtaro(){ taro.value++; }
  decrementtaro(){ if(taro.value >0)
  {
    taro.value--;
  }
  }
  incrementtos(){ tos.value++; }
  decrementtos(){ if(tos.value >0)
  {
    tos.value--;
  }
  }




}