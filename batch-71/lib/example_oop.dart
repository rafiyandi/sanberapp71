// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:batch_71/kotak_rectangle.dart';

void main(List<String> args) {
  var kotak = KotakRectangle();

  kotak.width;
}

class Car {
  String? name;
  String? machine;
  String? color;
  String? seat;
  String? quality;
  Car({this.name, this.machine, this.color, this.seat, this.quality});
}

class HondaBrio extends Car {
  String? size;
}

class CivicTurbo extends Car {
  String? turbo;
}
