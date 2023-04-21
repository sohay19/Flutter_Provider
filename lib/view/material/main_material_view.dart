
import 'package:flutter/material.dart';


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
        minimum: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _AgeInput(),
            SizedBox(
              height: 10,
            ),
            _WeightInput(),
            SizedBox(
              height: 30,
            ),
            _PetInfo(),
          ],
        ),
      ),
    );
  }
}

class _AgeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () { },
            child: Text('-'),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(''),
        ),
        ElevatedButton(
          onPressed: () { },
          child: Text('+'),
        ),
      ],
    );
  }
}

class _WeightInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () { },
          child: Text('-'),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(''),
        ),
        ElevatedButton(
          onPressed: () { },
          child: Text('+'),
        ),
      ],
    );
  }
}

class _PetInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(''),
    );
  }
}

