
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget title;
  final Widget widget;
  final bool centerTitle;
  final Widget? bottomNavigationBar;
  
  const AppScaffold({
    Key? key,
    required this.title,
    required this.widget,
    this.centerTitle = true,
    this.bottomNavigationBar,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        centerTitle: centerTitle,
        elevation: 0,
      ),
      body: SafeArea(
        child: widget,
      ), 
      bottomNavigationBar: bottomNavigationBar,     
    );
  }
}