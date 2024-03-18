import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/assets/mock.dart';
import 'package:studies_flutter/routes.dart';
import 'package:studies_flutter/widgets/view_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Center(
            child: Text(
          'BEST OFFER',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: Colors.red),
        )),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
          height: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        Center(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(241, 245, 244, 1),
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'What vehicle are you looking for?',
                prefixIcon: Icon(Icons.search)),
            controller: _controller,
            onSubmitted: (String value) {
              Routefly.push(routePaths.path.$index
                  .changes({'index': '1', 'search': value}));
            },
          ),
        )),
        const SizedBox(height: 10.0),
        const Center(
          child: Text(
            'recently added',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(113, 127, 127, 1),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ViewCard(
                title: mock[index]['title'].toString(),
                description: mock[index]['description'].toString(),
                hp: mock[index]['hp'].toString(),
                imagePath: mock[index]['imagePath'].toString(),
                id: mock[index]['id'].toString());
          },
        )),
      ]),
    ));
  }
}
