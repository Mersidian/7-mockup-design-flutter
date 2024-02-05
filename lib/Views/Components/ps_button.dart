import 'package:flutter/material.dart';

class PSButton extends StatelessWidget {
  const PSButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SizedBox(
        width: 135,
        height: 135,
        child: FloatingActionButton(
          elevation: 1,
          shape: const CircleBorder(),
          onPressed: () {},
          child: ClipOval(
            child: Image.asset(
              'assets/images/ps-logo-1-1024x538.png',
              width: 135,
              height: 135,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}