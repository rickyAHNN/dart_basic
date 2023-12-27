import 'package:flutter/material.dart';

class ImageSearchMainScreen extends StatelessWidget {
  const ImageSearchMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 24,
              child: Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return const Text('data');
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 32,
                      crossAxisSpacing: 32,
                      crossAxisCount: 2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
