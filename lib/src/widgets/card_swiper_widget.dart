import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    List<String> imagenes = List<String>(6);

    imagenes[0] = 'https://cdn.shopify.com/s/files/1/1584/8933/products/image_f557b068-148c-4dbf-9a57-5d1020a4cd67_800x.jpg?v=1587245037';
    imagenes[1] = 'https://www.xtremeinn.com/f/13739/137394752/billabong-momentum-pullover.jpg';
    imagenes[2] = 'https://www.intecglobalperu.com/wp-content/uploads/Razer-Deathadder-V2-Mini-01.jpg';
    imagenes[3] = 'https://www.intecglobalperu.com/wp-content/uploads/Logitech-G432-01.jpg';
    imagenes[4] = 'https://www.pcfactory.cl/public/foto/28529/1_500.jpg?t=1563801518';
    imagenes[5] = 'https://falabella.scene7.com/is/image/FalabellaPE/17337261_2?wid=800&hei=800&qlt=70';

    return Container(
        padding: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: 300.0,
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
          autoplay: true,
          autoplayDelay: 3000,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: GestureDetector(
                child: FadeInImage(
                  image: NetworkImage(imagenes[index]),
                  placeholder: AssetImage('assets/no-image.jpg'),
                  fit: BoxFit.cover
                ),
              )
            );
          },
          itemCount: imagenes.length,
          // pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        ),
      );
  }
}