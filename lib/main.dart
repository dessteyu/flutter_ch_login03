import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF4A4647),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: size.height / 3,
                  child: Image.asset('assets/images/missile.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70, style: BorderStyle.solid),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70, style: BorderStyle.solid),
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'Votre mail',
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.email,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70, style: BorderStyle.solid),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70, style: BorderStyle.solid),
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'Votre mot de passe',
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: size.width,
                      height: 40,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        color: Color(0xFF25BBCC),
                        // padding: EdgeInsets.only(),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey),
                        text: 'Mot de passe oublié?'
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
