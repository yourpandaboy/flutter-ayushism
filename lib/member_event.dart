import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ayushism/member_info_screen.dart';

class MemberEvent extends StatelessWidget {
  final String name;
  final String country;
  final Color color;

  const MemberEvent(this.name, this.color, this.country);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/member-info', arguments: {
      'name': name,
      'country': country,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  toList() {}
}
