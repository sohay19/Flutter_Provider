
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/main_Provider.dart';


class MaterialMainPage extends StatefulWidget {
  const MaterialMainPage({super.key, required this.title});
  final String title;

  @override
  State<MaterialMainPage> createState() => _MaterialMainPageState();
}

class _MaterialMainPageState extends State<MaterialMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(15, 30, 15, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Age'),
            SizedBox(
              height: 5,
            ),
            _AgeInput(),
            SizedBox(
              height: 30,
            ),
            Text('Weight'),
            SizedBox(
              height: 5,
            ),
            _WeightInput(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                'My Pet Info',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _PetInfo(),
          ],
        ),
      ),
    );
  }
}

class _AgeInput extends StatelessWidget {
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final age = context.select<MainProvider, int>((provider) => provider.age).toString();
    controller = TextEditingController(text: age + '살');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: context.read<MainProvider>().subAge,
            child: Text('-'),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 100,
          child: TextField(
            readOnly: true,
            controller: controller,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: context.read<MainProvider>().addAge,
          child: Text('+'),
        ),
      ],
    );
  }
}

class _WeightInput extends StatelessWidget {
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final weight = context.select<MainProvider, int>((provider) => provider.weight).toString();
    controller = TextEditingController(text: weight + 'kg');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: context.read<MainProvider>().subWeight,
          child: Text('-'),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 100,
          child: TextField(
            readOnly: true,
            controller: controller,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: context.read<MainProvider>().addWeight,
          child: Text('+'),
        ),
      ],
    );
  }
}

class _PetInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final petInfo = context.watch<MainProvider>().pet;

    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 3/4,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
          'Name: ' + petInfo.name +
              '\nAge: ' + petInfo.age.toString() + '살' +
              '\nWeight: ' + petInfo.weight.toString() + 'kg'
      ),
    );
  }
}

