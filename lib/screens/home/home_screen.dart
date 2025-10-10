import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const name = 'home';
  static const path = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width > size.height ? size.height : size.width;
    final textSize = width * 0.618 * 0.1;
    Color? textColor = Theme.of(context).colorScheme.onSurface;
    final textStyle = TextStyle(fontSize: textSize, color: textColor);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
              width: width * 0.618,
              height: width * 0.618,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ansible', style: textStyle),
                    SizedBox(height: textSize),
                    Text('Semaphore', style: textStyle),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
