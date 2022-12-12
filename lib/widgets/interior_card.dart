import 'package:flutter/material.dart';

class InteriorCard extends StatelessWidget {
  final String tag;
  final int aroundCount;
  final Color? color;
  final Color textColor;

  const InteriorCard({
    super.key,
    required this.tag,
    this.aroundCount = 0,
    this.color,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.3),
      borderRadius: BorderRadius.circular(25),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 8),
              color: Colors.grey.withOpacity(.4),
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#$tag',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '근처 $aroundCount개 카페',
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
