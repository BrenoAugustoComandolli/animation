import 'package:animation/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  const AnimatedListView({@required this.listSlidePosition, Key? key}) : super(key: key);

  final Animation<EdgeInsets>? listSlidePosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com o curso do Daniel Ciolfi",
          image: const AssetImage("images/perfil.jpg"),
          margin: listSlidePosition!.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso do Daniel Ciolfi 2",
          image: const AssetImage("images/perfil.jpg"),
          margin: listSlidePosition!.value * 0,
        ),
      ],
    );
  }
}
