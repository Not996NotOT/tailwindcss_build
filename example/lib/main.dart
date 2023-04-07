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
  @override
  Widget build(BuildContext context) {
    var wFull = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Div([
              Div([
                Div([
                  Input("", placeholder: "说点什么吧").build(),
                ]).build(),
                Div([
                  Div([]).h(100).w(100).bg(Colors.black).build(),
                  Input("", placeholder: "图片最多上传3张哦～～").build(),
                ]).flexCol().gap(12).build()
              ])
                  .flex()
                  .flexCol()
                  .justifyBetween()
                  .shadow2xl()
                  .rounded()
                  .bg(Colors.white)
                  .w(wFull)
                  .h(300)
                  .m(12)
                  .p(12)
                  .build()
            ]).mb(20).build(),

            Div([
              Div([])
                  .w(wFull)
                  .h(100)
                  .bg(Color.fromRGBO(255, 96, 10, 1))
                  .absolute()
                  .build(),
              Div([
                Div([])
                    .rounded()
                    .h(64)
                    .w(64)
                    .roundedFull()
                    .bg(Colors.black)
                    .build(),
                Div([
                  Div([Span("女").build(), Span("性别").build()])
                      .flex()
                      .flexCol()
                      .gap(12)
                      .itemsCenter()
                      .build(),
                  Span("|").build(),
                  Div([Span("女").build(), Span("性别").build()])
                      .flexCol()
                      .gap(12)
                      .itemsCenter()
                      .build(),
                ])
                    .flex1()
                    .flexRow()
                    .justifyBetween()
                    .bg(Colors.blue)
                    .itemsCenter()
                    .build()
              ])
                  .flex()
                  .flexRow()
                  .gap(12)
                  .itemsEnd()
                  .justifyBetween()
                  .p(12)
                  .w(wFull)
                  .top(70)
                  .absolute()
                  .build(),
            ])
                .flex()
                .flexCol()
                .itemsStretch()
                .relative()
                .h(300)
                .relative()
                .build(),

            Div([
              Div([]).h(20).w(20).bg(Colors.purple).build(),
              Div([]).h(20).w(20).bottom(0).bg(Colors.green).build(),
              Div([]).h(20).w(20).bg(Colors.yellow).build(),
              Div([])
                  .h(20)
                  .w(200)
                  .bottom(0)
                  .absolute()
                  .bg(Colors.lightBlue)
                  .build()
            ])
                .relative()
                .flex()
                .flexRow()
                .gap(12)
                .itemsCenter()
                .justifyCenter()
                .center()
                .w(200)
                .h(100)
                .bg(Colors.red)
                .build()
            // Div([
            //   GradientText(
            //     text: "Welcome",
            //     gradient: LinearGradient(colors: [
            //       Colors.green.shade300,
            //       Colors.blue.shade700,
            //     ]),
            //     style: const TextStyle(fontSize: 32.0),
            //   ),
            //   Div([
            //     Input("", placeholder: "请输入姓名")
            //         .placeholder()
            //         .fontBold()
            //         .text(size: 14, color: Colors.red.withOpacity(0.3))
            //         .asInput()
            //         .text(size: 14, color: Colors.black)
            //         .asDiv()
            //         .roundedFull()
            //         .px(12)
            //         .shadow2xl()
            //         .bg(Colors.white)
            //         .hFull()
            //         .wFull()
            //         .build()
            //   ])
            //       .roundedFull()
            //       .from(Colors.blue)
            //       .to(Colors.purple)
            //       .w(200)
            //       .h(32)
            //       .p(2)
            //       .build(),
            //   Span("提交")
            //       .text(color: Colors.white)
            //       .asDiv()
            //       .from(Colors.blue)
            //       .to(Colors.purple)
            //       .bgGradientToBR()
            //       .w(80)
            //       .textCenter()
            //       .px(12)
            //       .py(8)
            //       .center()
            //       .roundedFull()
            //       .build()
            // ]).flex().flexRow().itemsCenter().gap(12).m(12).build(),
            // // Div(List.generate(
            // //         4,
            // //         (index) => Div([])
            // //             .bg(Colors.yellow)
            // //             .shadowXl()
            // //             .roundedLg()
            // //             .build()))
            // //     .h(1200)
            // //     .m(12)
            // //     .grid()
            // //     .gridCols(2)
            // //     .aspect(2/1)
            // //     .gapX(16)
            // //     .gapY(16)
            // //     .build(),
            // Div([
            //   Span("button")
            //       .fontBold()
            //       .textBase()
            //       .text(color: Colors.white)
            //       .asDiv()
            //       .flex()
            //       .justifyCenter()
            //       .w(100)
            //       .px(8)
            //       .py(4)
            //       .m(8)
            //       .shadow2xl()
            //       .bg(Colors.blue)
            //       .rounded()
            //       .build(),
            // ]).build(),
            // Span("Grid").fontBold().textLg().build(),
            // Div([
            //   Span("Grid Template Columns").fontBold().textLg().build(),
            //   Div([
            //     Span("item1")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.red)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item2")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.green)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item3")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.blue)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item4")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.pink)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item1")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.red)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item2")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.green)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //     Span("item3")
            //         .italic()
            //         .asDiv()
            //         .bg(Colors.blue)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .build(),
            //   ])
            //       .grid()
            //       .h(300)
            //       .gapX(20)
            //       .gapY(10)
            //       .gridCols(4)
            //       .aspect(3 / 6)
            //       .build()
            // ]).flex().flexCol().gap(12).build(),
            // Span("Typography").fontBold().textLg().build(),
            // Div([
            //   Span("Font Size").fontBold().textLg().build(),
            //   Span("XS").textXs().build(),
            //   Span("SM").textSm().build(),
            //   Span("Base").textBase().build(),
            //   Span("LG").textLg().build(),
            //   Span("XL").textXl().build(),
            //   Span("2XL").text2xl().build(),
            //   Span("Custom Size").textSize(30).build(),
            //   Span("Font Example")
            //       .fontBold()
            //       .fontMedium()
            //       .lineClamp2()
            //       .leading3()
            //       .italic()
            //       .build()
            // ]).flexCol().mt(40).gap(12).build(),
            // Div([
            //   Span("Font Style").fontBold().textLg().build(),
            //   Span("Italic").italic().build(),
            //   Span("NoItalic").noItalic().build(),
            // ]).flex().flexCol().gap(12).my(40).build(),
            // Span("Flexbox ").fontBold().textLg().build(),
            // Div([
            //   Div([
            //     Div([
            //       Icon(Icons.search),
            //       Span("item1")
            //           .italic()
            //           .fontBold()
            //           .text(color: Colors.white)
            //           .build()
            //     ])
            //         .boder(color: Colors.blue, width: 2)
            //         .from(Colors.red)
            //         .via(Colors.green)
            //         .to(Colors.blue)
            //         .bgGradientToT()
            //         .roundedFull()
            //         .flexRow()
            //         .gap(12)
            //         .itemsCenter()
            //         .justifyCenter()
            //         .h(32)
            //         .w(200)
            //         .event()
            //         .onTap(() => print("123"))
            //         .build(),
            //     Span("item2").build()
            //   ]).flex().flexRow().gap(12).build(),
            //   Div([Span("item1").build(), Span("item2").build()])
            //       .flex()
            //       .flexCol()
            //       .gap(12)
            //       .build()
            // ]).build()
          ],
        ));
  }
}
