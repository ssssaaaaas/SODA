import 'package:flutter/material.dart';

class fab extends StatelessWidget {
  const fab({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TooltipState> tooltipKey = GlobalKey<TooltipState>();

    return Align(
      alignment: Alignment.bottomRight,
        child: Tooltip(
          key: tooltipKey,
          triggerMode: TooltipTriggerMode.manual,
          showDuration: const Duration(seconds: 3),
          message: 'Tooltip',
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 125, 19, 0),
            child: FloatingActionButton(
              onPressed: () {
                tooltipKey.currentState?.ensureTooltipVisible();
              },
              backgroundColor: const Color(0XFF182949),
              shape: const CircleBorder(), 
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
    );
  }
}
