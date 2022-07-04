import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ToastW extends StatelessWidget {
  const ToastW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast"),
        centerTitle: true,
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          buildShowToast(context);
        },
      ),
    );
  }

  ToastFuture buildShowToast(BuildContext context) {
    return showToast(
      'This is normal toast with animation',
      context: context,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      // position: StyledToastPosition.center,
      position: const StyledToastPosition(
          align: Alignment.bottomCenter, offset: 40.0),
      animDuration: const Duration(seconds: 1),
      curve: Curves.elasticOut,
      reverseCurve: Curves.linear,
    );
  }
}
