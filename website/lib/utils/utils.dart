import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';

Future<Size> getImageSize(Image image) {
  Completer<Size> completer = Completer();
  image.image.resolve(const ImageConfiguration()).addListener(
    ImageStreamListener(
      (ImageInfo image, bool synchronousCall) {
        var myImage = image.image;
        Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
        completer.complete(size);
      },
    ),
  );
  return completer.future;
}

Future<dynamic> readJSONFile(String filename, BuildContext context) async {
  print("Name: $filename");
  print("File: ${await File(filename).readAsString()}");
  return jsonDecode(await DefaultAssetBundle.of(context).loadString(filename));
}