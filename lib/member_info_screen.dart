import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MemberInfoScreen extends StatelessWidget {
  const MemberInfoScreen({Key? key}) : super(key: key);

  // final String memberName;
  // final String memberCountry;

  // const MemberInfoScreen(this.memberName, this.memberCountry, {Key? key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final memberName = routeArgs['name'];
    final memberId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(memberName!),
      ),
      body: const Center(
        child: Text('The Information of a member'),
      ),
    );
  }
}
