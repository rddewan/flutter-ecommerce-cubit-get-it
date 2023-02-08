
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin LoadingOverlay {
  OverlayEntry showLoadingOverlay(BuildContext context, OverlayEntry? overlayEntry) {
    overlayEntry = OverlayEntry(
      builder: (context) {
        return Align(
          alignment: Alignment.center,
          child: LoadingAnimationWidget.prograssiveDots(
            color: Theme.of(context).primaryColor,
            size: 100,
          ),
        );
      },
    );

    final overlay = Overlay.of(context);
    overlay.insert(overlayEntry);

    return overlayEntry;
  }
}