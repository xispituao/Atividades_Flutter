import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Gostou?'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  bool gostei = false;
  bool naoGostei = false;
  String urlImage = 'images/neutro.png';

  void clickGostei() {
    setState(() {
      if (gostei) {
        gostei = false;
        urlImage = 'images/neutro.png';
      }else{
        gostei = true;
        urlImage = 'images/gostei.png';
      }
      naoGostei = false;
    });
  }

  void clickNaoGostei() {
    setState(() {
      if (naoGostei) {
        naoGostei = false;
        urlImage = 'images/neutro.png';
      }else{
        naoGostei = true;
        urlImage = 'images/nao_gostei.png';
      }
      gostei = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Image(
                image: AssetImage(urlImage),
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: FlatButton.icon(
                  textColor: Colors.white,
                  icon: Icon(
                    Icons.thumb_up,
                    color: gostei ? Colors.blue : Colors.white,
                  ),
                  label: Text(
                    'Gostei',
                    style: TextStyle(
                      color: gostei ? Colors.blue : Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    clickGostei();
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: FlatButton.icon(
                  textColor: Colors.white,
                  icon: Icon(
                    Icons.thumb_down,
                    color: naoGostei ? Colors.blue : Colors.white,
                  ),
                  label: Text(
                    'Não Gostei',
                    style: TextStyle(
                      color: naoGostei ? Colors.blue : Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    clickNaoGostei();
                  },
                ),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    ));
  }
}
