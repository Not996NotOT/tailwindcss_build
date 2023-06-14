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

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.text,
    this.style,
    required this.gradient,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  TwTabsController twTabsController = TwTabsController();
  var selectedIndex = 0;
  var tabList = ["A", "B", "C"];
  @override
  void initState() {
    super.initState();
    twTabsController.addListener(() {
      print(twTabsController.selectedIndex);
      setState(() {
        selectedIndex = twTabsController.selectedIndex;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var wFull = MediaQuery.of(context).size.width;
    var hFull = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Div([
        Div([
           Span("test").asDiv().px(8).py(4).bg(Colors.blue).roundedBL(borderRadius: 4).roundedTR(borderRadius: 4).build(),
        ]).flex().flexRow().p(4).build(),
        Span("Input").text2xl().fontBold().build(),
        Input("", onFocus: (focusNode) {
          print("focus");
        }).build(),
        Span("Flex").text2xl().fontBold().build(),
        Span("Flex Row").textXl().fontBold().build(),
        Span("Flex Row ItemsStart").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .h(100)
            .flex()
            .itemsStart()
            .flexRow()
            .bg(Colors.blue)
            .build(),
        Span("Flex Row ItemsCenter").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .h(100)
            .flex()
            .itemsCenter()
            .flexRow()
            .bg(Colors.blue)
            .build(),
        Span("Flex Row ItemsEnd").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .h(100)
            .flex()
            .itemsEnd()
            .flexRow()
            .bg(Colors.blue)
            .build(),
        Span("Flex Row Gap").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .h(100)
            .flex()
            .itemsEnd()
            .flexRow()
            .gap(16)
            .bg(Colors.blue)
            .build(),
        Span("Flex Col").textXl().fontBold().build(),
        Span("Flex Col ItemsStart").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .flex()
            .flexCol()
            .itemsStart()
            .bg(Colors.blue)
            .build(),
        Span("Flex Col ItemsStart").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .flex()
            .flexCol()
            .itemsCenter()
            .bg(Colors.blue)
            .build(),
        Span("Flex Col ItemsStart").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .flex()
            .flexCol()
            .itemsEnd()
            .bg(Colors.blue)
            .build(),
        Span("Flex Col Gap").fontBold().build(),
        Div(List.generate(
                4,
                (index) =>
                    Span("item${index}").asDiv().bg(Colors.red).p(16).build()))
            .flex()
            .flexCol()
            .itemsEnd()
            .gap(16)
            .bg(Colors.blue)
            .build(),
        Span("Grid").text2xl().fontBold().build(),
        Span("Grid Base").textXl().fontBold().build(),
        Div(List.generate(
                4,
                (index) => Span("item${index}")
                    .asDiv()
                    .boder()
                    .h(index == 3 ? 400 : 100)
                    .bg(Colors.red)
                    .p(16)
                    .build()))
            .grid()
            .gridCols(2)
            .gap(16)
            .itemsCenter()
            .bg(Colors.blue)
            .build(),
      ])
          .flex()
          .flexCol()
          .gap(16)
          .wFull()
          .itemsStretch()
          .overflowYAuto()
          .build(),
    );
  }
}
