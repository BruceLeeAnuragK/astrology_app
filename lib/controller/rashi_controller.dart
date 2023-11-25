import 'package:astrology_app/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RashiController extends ChangeNotifier {
  List allrashi = [
    "${ImgPath.path + ImgPath.mithun}",
    "${ImgPath.path + ImgPath.kanya}",
    "${ImgPath.path + ImgPath.tula}",
    "${ImgPath.path + ImgPath.vrushabh}",
    "${ImgPath.path + ImgPath.vrushchik}",
    "${ImgPath.path + ImgPath.leo}",
    "${ImgPath.path + ImgPath.kumbh}",
    "${ImgPath.path + ImgPath.meen}",
    "${ImgPath.path + ImgPath.makar}",
  ];
}
