import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Span("Typography").fontBold().textLg().build(),
            Div([
              Span("Font Size").fontBold().textLg().build(),
              Span("XS").textXs().build(),
              Span("SM").textSm().build(),
              Span("Base").textBase().build(),
              Span("LG").textLg().build(),
              Span("XL").textXl().build(),
              Span("2XL").text2xl().build(),
              Span("Custom Size").textSize(30).build(),
              Span("Font Example")
                  .fontBold()
                  .fontMedium()
                  .lineClamp2()
                  .leading3()
                  .italic()
                  .build()
            ]).flexCol().mt(40).gap(12).build(),
            Div([
              Span("Font Style").fontBold().textLg().build(),
              Span("Italic").italic().build(),
              Span("NoItalic").noItalic().build(),
            ]).flexCol().gap(12).my(40).build(),
            Span("Flexbox ").fontBold().textLg().build(),
            Div([
              Div([
                Span("item1")
                    .italic()
                    .div()
                    .bg(Colors.red)
                    .itemsCenter()
                    .justifyCenter()
                    .h(100)
                    .w(100)
                    .build(),
                Span("item2").build()
              ]).flex().flexRow().gap(12).build(),
              Div([Span("item1").build(), Span("item2").build()])
                  .flex()
                  .flexCol()
                  .gap(12)
                  .build()
            ]).build()
          ],
        ));
  }
}
