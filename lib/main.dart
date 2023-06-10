import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_container/second_page.dart';

void main() {
  runApp(MaterialApp(
    home: hero_animation(),
  ));
}

class hero_animation extends StatefulWidget {
  const hero_animation({Key? key}) : super(key: key);

  @override
  State<hero_animation> createState() => _hero_animationState();
}

class _hero_animationState extends State<hero_animation> {
  List<Color> c =[Colors.red,Colors.green,Colors.pink,Colors.orange,Colors.cyanAccent,Colors.deepPurpleAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: GridView.builder(itemCount: c.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return InkWell(onTap: () {
              Navigator.push(context, PageRouteBuilder(transitionDuration: Duration(seconds: 2),pageBuilder: (context, animation, secondaryAnimation) {
                return second_page(c[index], "$index");
              },));
            },child: Hero(tag: "$index", child: Container(width: 100,height: 100,color: c[index],)));
          },),
    );
  }
}
