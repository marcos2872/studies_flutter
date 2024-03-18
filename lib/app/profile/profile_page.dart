import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        const Center(
            child: Text(
          'My profile',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        )),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
          height: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          width: MediaQuery.of(context).size.width,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(113, 127, 127, 1)),
              ),
              Text(
                'Heber Stein Mazutti',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(52, 52, 244, 1)),
              )
            ],
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
          height: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          width: MediaQuery.of(context).size.width,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'E-mail',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(113, 127, 127, 1)),
              ),
              Text(
                'heber@99coders.com.br',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(52, 52, 244, 1)),
              )
            ],
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
          height: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          width: MediaQuery.of(context).size.width,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Telephone',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(113, 127, 127, 1)),
              ),
              Text(
                '+55 31 9 8847-8869',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(52, 52, 244, 1)),
              )
            ],
          ),
        )
      ],
    )));
  }
}
