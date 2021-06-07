import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(child: ReusableCard()),
              ],
            ),
            Expanded(child: ReusableCard()),
            Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.white70,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      //TODO:use decorator only if colors are added inside in it.

      decoration: BoxDecoration(
        color: Color(0xFF1D1E20),
        borderRadius: BorderRadius.circular(10.0),
      ),
      // width: 100,
      height: 100,
    );
  }
}
