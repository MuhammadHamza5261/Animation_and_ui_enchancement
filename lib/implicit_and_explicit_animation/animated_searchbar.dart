import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({super.key});

  @override
  State<AnimatedSearchBar> createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {

  bool isExpanded = false;
  bool isIconClicked = false;

  @override
  Widget build(BuildContext context) {

    const animationDuration = Duration(milliseconds: 250);
    const opacityAnimationDuration = Duration(milliseconds: 150);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimatedContainer(
                height: 48,
                duration: animationDuration,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: isExpanded ? Colors.blue : Colors.transparent,
                    width: isExpanded ? 1 : 0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTapDown: (_) {
                        setState(() {
                          isIconClicked = true;
                        });
                      },
                      onTapUp: (_) {
                        setState(() {
                          isIconClicked = false;
                        });
                      },
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: AnimatedOpacity(
                        duration: opacityAnimationDuration,
                        opacity: isIconClicked ? 0.7 : 1,
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          child: const Icon(Icons.search, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      child: AnimatedContainer(
                        duration: animationDuration,
                        curve: Curves.easeInOut,
                        width: isExpanded ? 200 : 0,
                        child: TextField(
                          onTapOutside: (_) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Start typing to search',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
