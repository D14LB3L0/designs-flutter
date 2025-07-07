import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  const BasicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.webp')),

          Title(),

          ButtomSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Lorem proident ullamco qui eiusmod ea magna minim dolor. Consectetur dolore cupidatat duis amet minim. Commodo esse magna proident officia eiusmod nulla sunt consequat laboris in aute irure.',
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),

          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 50,
        children: [
          SelectOption(icon: Icons.phone, name: 'CALL'),
          SelectOption(icon: Icons.arrow_outward_rounded, name: 'ROUTE'),
          SelectOption(icon: Icons.share, name: 'SHARE'),
        ],
      ),
    );
  }
}

class SelectOption extends StatelessWidget {
  final IconData icon;
  final String name;

  const SelectOption({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(name, style: TextStyle(color: Colors.blue, fontSize: 15)),
      ],
    );
  }
}
