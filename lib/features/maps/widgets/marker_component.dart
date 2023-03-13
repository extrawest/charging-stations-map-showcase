import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MarkerComponent {
  const MarkerComponent(this.size);

  final Size size;

  void draw(Canvas canvas);

  Future<BitmapDescriptor> buildBitmapDescriptor() async {
    final pictureRecorder = PictureRecorder();
    final canvas = Canvas(pictureRecorder);

    draw(canvas);

    final picture = pictureRecorder.endRecording();
    final img = await picture.toImage(
      size.width.toInt() * 10,
      size.height.toInt() * 10,
    );
    final data = await img.toByteData(format: ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }
}
