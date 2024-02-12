import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.orientation,
      required this.title,
      required this.description,
      required this.imagePath});

  final int orientation;
  final String title;
  final String description;
  final String imagePath;

  Widget textCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 50, color: Colors.white),
        ),
        SizedBox(
          width: 300,
          child: Text(description,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.left),
        ),
      ],
    );
  }

  Widget imageCard(BuildContext context) {
    return SizedBox(
      width: 400,
      // decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (orientation == 2)
            ? const Color(0xFF252527)
            : Theme.of(context).colorScheme.background,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (orientation == 1) ? textCard(context) : imageCard(context),
            const SizedBox(
              width: 50,
            ),
            (orientation == 1) ? imageCard(context) : textCard(context),
          ],
        ),
      ),
    );
  }
}
