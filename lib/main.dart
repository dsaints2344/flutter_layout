import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your app name',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rows and Columns'),
        ),
        backgroundColor: Colors.indigo[100],
        body: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
        width: sizeX,
        height: sizeY,
        child: Stack(
          children: showPizzaLayout(sizeX, sizeY),
        ));
  }

  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = [];

    while (i < numSquares) {
      Container square = Container(
        color: colors[i],
        width: 60,
        height: 60,
        child: Text(i.toString()),
      );
      i++;
      squares.add(square);
    }
    return squares;
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    List<Widget> layoutChildren = [];
    Container background = Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('http://bit.ly/pizza_image'),
              fit: BoxFit.fitHeight)),
    );

    layoutChildren.add(background);
    Positioned pizzaCard = Positioned(
        top: sizeY / 20,
        left: sizeX / 20,
        child: Card(
          elevation: 12,
          color: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Pizza 1",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[800]),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'This pizza is made of tomato, \n Mozzarella and Basil. \n\n You can\'t miss it',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              )
            ],
          ),
        ));
    layoutChildren.add(pizzaCard);
    Positioned buttonOrder = Positioned(
      bottom: sizeY / 20,
      left: sizeX / 20,
      width: sizeX - sizeY / 10,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            primary: Colors.orange[900]),
        child: const Text(
          'Order Now!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
    layoutChildren.add(buttonOrder);
    return layoutChildren;
  }
}
