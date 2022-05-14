import 'dart:convert';
import 'dart:io';

T? fixture<T>(String name) => jsonDecode(
      File('test/util/fixtures/$name').readAsStringSync(),
    ) as T?;
