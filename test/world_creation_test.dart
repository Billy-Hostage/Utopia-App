import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:utopia_app/backend/utopia_world.dart';
import 'package:utopia_app/host/basic_host.dart';
import 'package:utopia_app/host/host_type.dart';
import './world_holder.dart';

void main() {
  test('String.split() splits the string on the delimiter', () {
    var string = 'foo,bar,baz';
    expect(string.split(','), equals(['foo', 'bar', 'baz']));
  });

  test('String.trim() removes surrounding whitespace', () {
    var string = '  foo ';
    expect(string.trim(), equals('foo'));
  });
}
