import 'dart:convert';
import 'dart:io';

T? fixture<T>(String name) => jsonDecode(
      File('test/common/fixtures/json/$name').readAsStringSync(),
    ) as T?;
