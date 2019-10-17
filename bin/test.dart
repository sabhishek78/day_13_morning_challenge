import 'dart:math';
import 'main.dart';

import 'package:test/test.dart';

void main() {

  test('Lengthen String', (){
    expect(lengthen("abcdefg","ab"),"ababba");

  });
  test('find broken keys', (){

    expect((findBrokenKeys("happy birthday","hawwy birthday")),['h','1'] );
  });
}