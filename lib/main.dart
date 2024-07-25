import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      themeMode: ThemeMode.light,
      theme: ShadThemeData(
          colorScheme: const ShadGreenColorScheme.light(),
          brightness: Brightness.light,
          inputTheme: const ShadInputTheme(
            // Setting the input background color to white
            backgroundColor: Colors.white,
          )),
      home: const MyHomePage(
        title: "ShadCN Reproduction",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // These two inputs should have a white background but they do not.
              // The backgroundColor parameter of inputTheme is ignored.
              ShadInput(
                placeholder: Text("Name"),
              ),
              ShadInput(
                placeholder: Text("Email"),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
