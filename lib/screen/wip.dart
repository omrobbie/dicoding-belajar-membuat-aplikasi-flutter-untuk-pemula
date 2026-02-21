import 'package:flutter/material.dart';
import 'package:pock/component/custom_text.dart';

class Wip extends StatelessWidget {
  const Wip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Image.network(
                'https://pngimg.com/d/under_construction_PNG42.png',
                fit: .cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;

                  return Center(
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
              ),
              CustomText(text: 'Work in Progress'),
            ],
          ),
        ),
      ),
    );
  }

  static void showWip(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Wip()));
  }
}
