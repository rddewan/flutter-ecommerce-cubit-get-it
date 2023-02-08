

import 'package:flutter/material.dart';


class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No Route'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No Route found'),
            ElevatedButton.icon(
              onPressed: () {
                
              }, 
              icon: const Icon(Icons.home), 
              label: const Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}