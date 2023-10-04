import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class question1 extends StatelessWidget {
  const question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screens1(),));
            }, child: Text("Screens1")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screens2(),));
            }, child: Text("Screens2"))
          ],
        ),
      ),
    );
  }
}
class Screens1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screens1"),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: media.height, // or use Expanded if it's a child of a Flex widget
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: media.height * 0.2,
                        width: media.width * 0.4,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: media.height * 0.2,
                        width: media.width * 0.4,
                        color: Colors.blue,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: media.height * 0.2,
                        width: media.width * 0.4,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: media.height * 0.2,
                        width: media.width * 0.4,
                        color: Colors.blue,
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 110,
                        width: 110 ,
                        color: Colors.yellow,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 110,
                        width: 110 ,
                        color: Colors.yellow,
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
      )
        
    );
  }
}
class Screens2 extends StatelessWidget {
  const Screens2({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screens 2 "),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/1.jpeg', // Make sure to replace this with the actual path of your image
            height: 300,
            width: media.width,// Adjust the height as per your requirement
            fit: BoxFit.cover, // This property determines how the image will be fitted within the widget
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Oeschien Lake Compgroudn",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                          Text("Lake",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15))
                        ],
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: RatingBar(
                          initialRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          ratingWidget: RatingWidget(
                            full: Icon(Icons.star, color: Colors.amber),
                            half: Icon(Icons.star_half, color: Colors.amber),
                            empty: Icon(Icons.star_border, color: Colors.amber),
                          ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      Text("41"),
                      SizedBox(
                        width: 10,
                      )
                    ],
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.call),
                        ),
                        Text("Call")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.location_on_outlined),
                        ),
                        Text("Route")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.share),
                        ),
                        Text("Share")
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('''Source of Water:
Lakes are typically fed by rivers, streams, and sometimes underground springs. They do not have a direct connection to the ocean.
Salinity:
Lakes are typically freshwater, meaning they contain low levels of salt. However, some lakes, known as "salty lakes" or "salt lakes," may have higher salinity levels.
Flora and Fauna:
Lakes support a wide variety of aquatic plants and animals, including fish, algae, and various types of vegetation. The types of species found in a lake can vary depending on factors such as water temperature and nutrient levels.''')
              ],
            ),
          )
        ],

      ),
    );
  }
}

