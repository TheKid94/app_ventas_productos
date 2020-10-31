import 'package:flutter/material.dart'; 

class CatalogoPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text('Productos', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.grey,
        ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 230.0,
                              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/ps1.jpg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              top:130.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('PS7',
                                   style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$8800',
                                   style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontSize: 20.0,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.favorite, color: Colors.red),
                                Text(
                                  '368',
                                    style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                        borderRadius: BorderRadius.circular(7.0),
                        elevation: 2.0,
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.chat_bubble,
                                  color: Colors.grey.withOpacity(0.5)),
                              Text(
                                '76',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(7.0),
                        elevation: 2.0,
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.arrow_forward, color: Colors.grey),
                              Text(
                                '18',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text('Destacados',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.85,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildProductoCard('PS7', 'Sonny', 'assets/ps1.jpg', 64, 22, 1),
                _buildProductoCard('Bicicleta', 'Scott', 'assets/bicicleta.jpg', 64, 22, 2),
                _buildProductoCard('Laptop', 'Sony', 'assets/laptop.jpg', 64, 22, 3),
                _buildProductoCard('Zapatillas 123', 'Adidas', 'assets/zapatillaA.jpg', 64, 22, 4),
                _buildProductoCard('USB', 'SamDisk', 'assets/usbSam.jpg', 64, 22, 5),
                _buildProductoCard('TV', 'Samsung', 'assets/tvSam.jpg', 64, 22, 6),
              ],
            ),
            SizedBox(height: 10.0)
            ],
          )
        ],
      )
    );
  }

  Widget  _buildProductoCard(
    String name, String origin, String cardImage, int likes, int commentCount, int cardIndex
  ) {
    return Padding(
      padding: cardIndex.isEven? EdgeInsets.only(right: 15.0): EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            style: BorderStyle.solid,
            width: 1.0
          )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                    ),
                    image: DecorationImage(
                      image: AssetImage(cardImage),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        likes.toString(),
                        style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),
                        
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        commentCount.toString(),
                        style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber
                ),
                child: Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}