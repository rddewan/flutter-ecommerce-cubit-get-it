import 'package:flutter/material.dart';

class AppScaffoldSliver extends StatelessWidget {
  final Widget title;
  final List<Widget> slivers;
  final bool centerTitle;
  final ScrollController? controller;
  
  const AppScaffoldSliver({
    Key? key,
    required this.title,
    required this.slivers,
    this.centerTitle = true,
    this.controller,
    
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
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          controller: controller,
          slivers: slivers,
        ),
      ),
    );
  }
}