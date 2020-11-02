import 'package:app_ventas/src/widgets/card_swiper_widget.dart';
import 'package:app_ventas/src/widgets/marcas_swiper_widget.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Scrollbar(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _swiperTarjetas(),
              _footerMarcas(context)
            ],
          ),
        ),
      )
    );
  }

  Widget _swiperTarjetas(){

    return CardSwiper();

  }

  Widget _footerMarcas(BuildContext context){
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text('Marcas',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          MarcasSwiper()
        ],
      ),
    );
  }

}
