library tryg_poc_component1;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class TrygComponent1 extends StatefulWidget {
  final String? car;
  final String? description;
  final VoidCallback voidCallback;

  const TrygComponent1(
      {Key? key,
        this.car,
        this.description,
        required this.voidCallback
      }) : super(key: key);

  @override
  State<TrygComponent1> createState() => _TrygComponent1State();
}

class _TrygComponent1State extends State<TrygComponent1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 130,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("Bil: ${widget.car}"),
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Text("Description: ${widget.description}"),
              ],
            ),
            Row(
              children: [
                 ElevatedButton(
                    onPressed: widget.voidCallback,
                    child: const Text("Send callback")
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}