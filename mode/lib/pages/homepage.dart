import 'package:flutter/material.dart';
import 'package:mode/componants/box.dart';
import 'package:mode/componants/button.dart';
import 'package:mode/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var useColor = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: useColor.background,
        body: Center(
          child: MyBox(
              color: useColor.primary,
              child: MyButton(
                  color: useColor.secondary,
                  onTap: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toogleTheme();
                  })),
        ),
      ),
    );
  }
}
