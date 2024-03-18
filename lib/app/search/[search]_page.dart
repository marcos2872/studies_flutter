import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/assets/mock.dart';
import 'package:studies_flutter/routes.dart';
import 'package:studies_flutter/widgets/view_card.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late TextEditingController _controller;
  late List<Map<String, String>> data = mock;

  @override
  void initState() {
    super.initState();
    String searchParams = Routefly.query['search'].toString().contains('[')
        ? ''
        : Routefly.query['search'].toString();

    _controller =
        TextEditingController.fromValue(TextEditingValue(text: searchParams));
  }

  void goView(String id) {
    Routefly.pushNavigate(routePaths.view.$id.changes({'id': id}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
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
            margin:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                setState(() {
                  data = mock
                      .where((e) => e['title']
                          .toString()
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
                // print();
              },
            ),
          )),
          const SizedBox(height: 10.0),
          Expanded(
            child: !data.isEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    itemCount: data.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return ViewCard(
                          title: data[index]['title'].toString(),
                          description: data[index]['description'].toString(),
                          hp: data[index]['hp'].toString(),
                          imagePath: data[index]['imagePath'].toString(),
                          id: data[index]['id'].toString());
                    },
                  )
                : const Text(
                    'No results...',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
                  ),
          )
        ],
      )),
    );
  }
}
