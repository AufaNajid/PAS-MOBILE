import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:pas_mobile11/Component/color_component.dart';

class BtnDownload extends StatelessWidget {
  const BtnDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ButtonDownload(); // Call the constructor of _ButtonDownload
  }
}

class _ButtonDownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _saveQRISImage(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          color: MyColors.ocean,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Download',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveQRISImage(BuildContext context) async {
    try {
      String imagePath = "assets/image/qris.png";

      final ByteData data = await rootBundle.load(imagePath);
      final List<int> bytes = data.buffer.asUint8List();

      await ImageGallerySaver.saveImage(Uint8List.fromList(bytes), quality: 100);

      Fluttertoast.showToast(msg: 'Image downloaded successfully.');
    } catch (e) {
      // Show a toast indicating download failure
      Fluttertoast.showToast(msg: 'Failed to download image.');
    }
  }
}
