
import 'package:flutter/material.dart';
TextEditingController controller = TextEditingController();
void main(){
  runApp( MyApp());
  print(controller.text);
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
/*
  // Doubt about Constructor
*/
  @override
  Widget build(BuildContext context) {
   // String value = "";
    TextEditingController controller = TextEditingController();
    final ButtonStyle style =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onSecondary);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
        actions: <Widget>[

          TextButton(
            child: const Text('Next'),
            style: style,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body:

                    SingleChildScrollView(child: Column(
                      children: <Widget>[

                      Container(
                        margin: EdgeInsets.all(25),
                        child: FlatButton(
                          child: Text('SignUp', style: TextStyle(fontSize: 20.0),),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          ' New Page',
                          style: TextStyle(fontSize: 34,color: Colors.amber),
                        )
                      ),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: RaisedButton(
                        child: Text('I am RaisedButton'),
                        onPressed: (){
                          print('You tapped on RaisedButton');
                        },
                      ),

                    ),
                        Container(
                            margin: EdgeInsets.all(25),
                            child:TextField(
                              controller: controller,
                                decoration: InputDecoration(
                                border: OutlineInputBorder()
                                )
                            )
                        ),

                        Container(
                       child: IconButton(
                          icon: Icon(Icons.volume_up),
                          tooltip: 'Increase volume by 10%',
                          onPressed: () { print('Volume button clicked');},
                        )
                    ),
                    SizedBox.square(
                      child:
                      OutlineButton(
                          focusColor: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColor,
                          child: Text(controller.text),
                          onPressed:() {
                            print('Outline button click');
                          },
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                      ),
                    ),

                      ],),
                     /* child: Text(
                        ' New Page',
                       style: TextStyle(fontSize: 34,color: Colors.amber),

                    ),*/
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body:  Column(
        children: const <Widget>[
          Text('Deliver features faster',),
          Text('Craft beautiful UIs'),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: FlutterLogo(),
            ),
          ),
        ],
      )
    );
  }
}


