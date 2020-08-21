import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_card/flip_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/code.jpeg")),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.0),
                            child: _nameDetailsContainer(),
                          ),
                          back: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.0),
                            child: _socialContainer(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _nameDetailsContainer() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 130.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/natan.jpg'),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 6),
                      child: Text('Natanael Silva',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Text(
                      'Flutter & Rails Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _detailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _socialContainer() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 130.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/natan.jpg'),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text('Redes Sociais',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _socialdetailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _detailsContainer() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Cursando Análise e Desenvolvimento de Sistemas no Instituto Federal do Piauí.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Icon(FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.blueAccent)),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  child: Text(
                    'Teresina - PI, Brazil',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Icon(FontAwesomeIcons.envelope,
                      color: Colors.blueAccent)),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  child: Text(
                    'nataso.s11@gmail.com',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }

  Widget _socialdetailsContainer() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Container(
              child: Row(
            children: <Widget>[
              Container(
                  child: Icon(
                FontAwesomeIcons.twitter,
                color: Colors.pink,
                size: 30.0,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                    '/@xispituao24',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Container(
              child: Row(
            children: <Widget>[
              Container(
                  child: Icon(
                FontAwesomeIcons.github,
                color: Colors.pink,
                size: 30.0,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                    '/xispituao',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 24),
          child: Container(
              child: Row(
            children: <Widget>[
              Container(
                  child: Icon(
                FontAwesomeIcons.facebook,
                color: Colors.pink,
                size: 30.0,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Text(
                    '/xispituao24',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}