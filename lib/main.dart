import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var city = ['Toronto', 'Boston', 'Mexico', 'London'];

  var firstcity = 'toronto';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lesson 06: Buttons'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [

                  OutlineButton(
                    shape: StadiumBorder(),
                    highlightedBorderColor: Colors.blue,
                    child: Text('Flights'),
                    onPressed: () {},
                  ),

                  OutlineButton(
                    shape: StadiumBorder(),
                    highlightedBorderColor: Colors.blue,
                    child: Text('Hotels'),
                    onPressed: () {},
                  ),
                  OutlineButton(
                    shape: StadiumBorder(),
                    highlightedBorderColor: Colors.blue,
                    child: Text('Cars'),
                    onPressed: () {},
                  ),
                ],
              ),
              OutlineButton(
                shape: StadiumBorder(),
                highlightedBorderColor: Colors.blue,
                child: Text('Outline Button'),
                onPressed: () {},
              ),
              Center(
                child: SafeArea(
                    child: Text(
                  'botones FK',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 25.0),
                )),
              ),
              //Raised Button
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Raised Button',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
                onPressed: () {},
              ),
              //Icon Buton
              IconButton(
                icon: Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {},
              ),
              Text('Sound'),
              //Flat Button
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),

            //start the code of dropdownButton//

              DropdownButton<String>(
                items: city.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String NewUserValue) {
                      setState(() { 
                        this.firstcity = NewUserValue;
                      });
                // here your code will execute when the user select a new item
               },
              ),
            ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ),
      ),
    );
  }
}