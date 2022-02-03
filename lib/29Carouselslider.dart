import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ca3OoJXSuB3p_76gpyvUiAHaEo?w=246&h=180&c=7&r=0&o=5&pid=1.7"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.easeInCubic,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
