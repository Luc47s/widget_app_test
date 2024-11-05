import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'dataDolore ullamco laborum elit ullamco dolor exercitation laborum cillum minim fugiat enim duis commodo. Anim enim do consectetur do aute. Do in deserunt proident et fugiat. Cupidatat fugiat exercitation anim cupidatat qui ut consectetur est cupidatat proident laboris duis ut. Lorem excepteur cupidatat duis consequat fugiat. Laboris consectetur duis tempor minim ad.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Aute duis aute elit ipsum voluptate consectetur commodo magna magna sit officia dolor nulla. Do aliqua labore consequat duis exercitation elit. Cupidatat nulla eu ea fugiat et cupidatat non nulla. Laborum sint nulla enim nulla elit aute mollit ipsum. Lorem aliqua cillum eu pariatur non nostrud nisi. Aute ut minim ea labore reprehenderit ea deserunt ut pariatur irure enim ut. Ut cillum in occaecat sint pariatur pariatur proident irure amet.'),
                ]);
              },
              child: const Text('Lincencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
