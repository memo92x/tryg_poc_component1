library tryg_poc_component1;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class TrygComponent1 extends StatefulWidget {
  final String? name;
  final Function(String value) callback;

  const TrygComponent1(
      {Key? key,
        this.name,
        required this.callback
      }) : super(key: key);

  @override
  State<TrygComponent1> createState() => _TrygComponent1State();
}

class _TrygComponent1State extends State<TrygComponent1> {
  String age = "";

  final ageController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    ageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onButtonPressed() {
    setState(() {
      age = ageController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 240,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Indsæt alder',
                ),
              ),
              const Gap(30),

              Row(
                children: [
                  Text("Navn: ${widget.name}"),
                ],
              ),

              const Gap(20),
              Row(
                children: [
                   ElevatedButton(
                      onPressed: () => widget.callback.call("Info modtaget fra ${widget.name} med alder ${ageController.value.text}"),
                      child: const Text("Send callback")
                  ),
                ],
              )
            ],
          ),
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