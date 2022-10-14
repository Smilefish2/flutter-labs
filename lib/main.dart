import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/device_preview.dart';
// import 'app/my_app.dart';

void main() {
  // runApp(const MyApp());
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
        DevicePreviewCustomPlugin(),
      ],
      builder: (context) => const DevicePreviewApp(),
    ),
  );
}