import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/course/course_detail.dart';
import '../pages/notfound/not_found.dart';
import '../pages/index.dart';

var indexHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return IndexPage();
}
);

var courseDetailHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return CourseDetail();
});

var notfoundHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return NotFound();
});
