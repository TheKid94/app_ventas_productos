import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MarcasSwiper extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    List<String> marcasImg = List<String>(6);

    marcasImg[0] = 'https://www.dior.com/couture/var/dior/storage/images/14278526/32-esl-ES/cover-addict2_1440_1200.jpg';
    marcasImg[1] = 'https://hardwareviews.com/wp-content/uploads/2019/03/razer-logo.jpg';
    marcasImg[2] = 'https://hardzone.es/app/uploads-hardzone.es/2017/04/Logitech-logo-e1555870246435.jpg';
    marcasImg[3] = 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4f3.png';
    marcasImg[4] = 'https://www.xtrafondos.com/descargar.php?id=5082&resolucion=1280x768';
    marcasImg[5] = 'https://1000marcas.net/wp-content/uploads/2020/01/Sony-simbolo.jpg';

    return Container(
      height: _screenSize.height*0.2,
      child: new Swiper(
        itemCount: marcasImg.length,
        itemBuilder: (context, index){
          return _tarjeta(context, marcasImg[index]);
        },
        viewportFraction: 0.45,
      ),
    );
  }

  Widget _tarjeta(BuildContext context, String marcas){
    final tarjeta = Container(
      margin: EdgeInsets.only(right: 15.0),
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              image: NetworkImage(marcas),
              placeholder: AssetImage('assets/no-image.jpg'),
              fit: BoxFit.fill,
              height: 160.0,
              width: 200.0,
            ),
          )
        ],
      ),
    );
    return GestureDetector(
      child: tarjeta
    );
  }

}



