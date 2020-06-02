import 'package:flutter/material.dart';
import 'package:slupperapplive/donald_portrait.dart';

class SluppertCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250.0,
        width: 200.0,
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Donald.jpg'),
                  radius: 75.0,
                ),
              ),
              Container(
                width: 150.0,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: RaisedButton(
                  child: Text(
                    'Hello World',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contet) => DonaldPortrait(),
                      ),
                    );
                    print('Hello World');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
