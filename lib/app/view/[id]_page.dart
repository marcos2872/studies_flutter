import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/assets/mock.dart';
import 'package:studies_flutter/routes.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  late PageController _pageController;
  int activePage = 0;
  late Map<String, String> data;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);

    String id = Routefly.query['id'].toString();
    data = mock.firstWhere((element) => element['id'] == id);
  }

  void goHome() {
    Routefly.push(routePaths.path.$index.changes({'index': '0'}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'BEST OFFER',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.red),
          ),
          leading: TextButton(
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.red),
            onPressed: () {
              Routefly.pop(context);
            },
          )),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
              height: 1.0,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            ),
            Row(
              children: [
                Container(
                    width: 70,
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(
                        width: 70,
                        image: NetworkImage(
                            'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1472'),
                      ),
                    )),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rafael Souza',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Text(
                        data['title']!,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(143, 144, 144, 1)),
                      ),
                      const Text(
                        '\$ 150.000,00',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.red),
                      ),
                      const Text(
                        '+55 31 98847-8893',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(143, 144, 144, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              data['title']!,
              style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: 3,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    return Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(
                            width: 60,
                            fit: BoxFit.cover,
                            image: NetworkImage(data['imagePath']!),
                          ),
                        ));
                  }),
            )
            // Container(
            //   width: 200,
            //   child: ListView.builder(
            //     itemCount: 10,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return Container(
            //           width: 150,
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(10),
            //             child: Image(
            //               width: 150,
            //               image: NetworkImage(data['imagePath']!),
            //             ),
            //           ));
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
