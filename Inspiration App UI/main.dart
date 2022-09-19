import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color.fromRGBO(244, 243, 243, 1),

      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,  color: Colors.black87,),
          onPressed: () {  },
        ),
      ),

      // this is the upper part
      body: SafeArea(
        /* SafeArea:
        *  A widget that insets its child by sufficient padding to avoid intrusions by the operating system.
        *  For example, this will indent the child by enough to avoid the status bar at the top of the screen.
        * */
        child: Column(
          children: <Widget>[

            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: EdgeInsets.all(20.0), // this part is covering the upper space

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                // text
                children: <Widget>[ // as we have multiple things we used widget
                  Text('Find Your', style: TextStyle(color: Colors.black87, fontSize: 25),),
                  SizedBox(height: 3,), // for marginTop
                  Text('Inspiration', style: TextStyle(color: Colors.black, fontSize: 40),),
                  SizedBox(height: 20,), // for marginTop

                  // text input box for search what you looking for
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Color.fromRGBO(244, 243, 243, 1), borderRadius: BorderRadius.circular(10)),
                    child: TextField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87,),
                        hintText: ("Search you're looking for"),
                         hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Text('Promo Today', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('images/one.jpg'),
                        promoCard('images/two.png'),
                        promoCard('images/three.jpg'),
                        promoCard('images/four.jpg'),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/four.jpg')
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.1),
                            ]
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Best Design', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      ),
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

  // this is a common box for design all the image.
  Widget promoCard(image)
  {
    return AspectRatio(
        aspectRatio: 2.42/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          ),
        ),

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.1),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
