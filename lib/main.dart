import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const IosNativeView());
}

class IosNativeView extends StatefulWidget {
  const IosNativeView({super.key});

  @override
  State<IosNativeView> createState() => _IosNativeViewState();
}

class _IosNativeViewState extends State<IosNativeView> {
  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = '<platform-view-type>';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return SafeArea(
      child: UiKitView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: creationParams,
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}
