import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class DevicePreviewApp extends StatelessWidget {
  const DevicePreviewApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const DevicePreviewHome(),
    );
  }
}

class DevicePreviewHome extends StatelessWidget {
  const DevicePreviewHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevicePreview'),
      ),
      body: ListView(
        children: [
          ...Iterable.generate(
            100,
                (i) => ListTile(
              title: Text('Tile $i'),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

class DevicePreviewCustomPlugin extends StatelessWidget {
  const DevicePreviewCustomPlugin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToolPanelSection(
      title: 'Custom',
      children: [
        ListTile(
          title: const Text('Print in console'),
          onTap: () {
            // ignore: avoid_print
            print('Hey, this is a custom plugin!');
          },
        )
      ],
    );
  }
}