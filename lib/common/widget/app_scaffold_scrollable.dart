import 'package:flutter/material.dart';

class AppScaffoldScrollable extends StatelessWidget {
  final Widget title;
  final Widget widget;
  final bool centerTitle;
  final ScrollController? controller;
  final Widget? bottomNavigationBar;

  const AppScaffoldScrollable({
    Key? key,
    required this.title,
    required this.widget,
    this.centerTitle = true,
    this.controller,
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
        child: SingleChildScrollView(
          child: widget,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
