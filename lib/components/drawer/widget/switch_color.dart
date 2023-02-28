import 'package:flutter/material.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class SwitchColor extends StatelessWidget {
  const SwitchColor({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeStyleColorProvider provider =
        Provider.of<ChangeStyleColorProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Escolha as cores das sua notas'),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 25,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 10),
              itemCount: ThemeColors.allCardColors.length,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        width: 15,
                        color: ThemeColors
                            .allCardColors[provider.stylePostItColor[provider.styleColor]]![i],
                      )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
