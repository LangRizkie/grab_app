import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SearchModule extends StatefulWidget {
  const SearchModule({Key? key}) : super(key: key);

  @override
  State<SearchModule> createState() => _SearchModuleState();
}

class _SearchModuleState extends State<SearchModule> {
  final _placeholder = ['mcdonald', 'pizza hut', 'kfc', 'burger king'];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(7),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade600,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            pause: const Duration(
                              milliseconds: 1500,
                            ),
                            animatedTexts: List.generate(
                              _placeholder.length,
                              (index) => TyperAnimatedText(
                                _placeholder[index],
                                speed: const Duration(
                                  milliseconds: 80,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const VerticalDivider(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 7,
                    right: 14,
                  ),
                  child: Icon(
                    Icons.flip,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
