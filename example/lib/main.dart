import 'package:flutter/material.dart';

import 'components/button_demo.dart';
import 'components/container_demo.dart';
import 'components/flex_demo.dart';
import 'components/text_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TailwindCSS Builder Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const TextDemo(),
    const ContainerDemo(),
    const FlexDemo(),
    const ButtonDemo(),
  ];

  final List<String> _pageTitles = [
    'Text Builder',
    'Container Builder',
    'Flex Builder',
    'Button Demo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        title: Text(_pageTitles[_selectedIndex]),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFF9FAFB), // gray-50
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: _pages[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.blue[600],
        unselectedItemColor: Color(0xFF9CA3AF), // gray-400
        backgroundColor: Colors.white,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square),
            label: 'Container',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_week),
            label: 'Flex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_button),
            label: 'Button',
          ),
        ],
      ),
    );
  }
}