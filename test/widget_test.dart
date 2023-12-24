// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_chap5_q01/main.dart';


void main() {
  testWidgets('Proportional Layout with Flexible Widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyWidget())); // Replace with your actual app widget
 
    // Verify the Row widget is used
    expect(find.byType(Row), findsOneWidget);
 
    // Verify the existence of three Flexible widgets
    expect(find.byType(Flexible), findsNWidgets(3));
 
    // Verify the proportions of the Flexible widgets
    final Finder flexWidgets = find.byType(Flexible);
    final List<Widget> flexChildren = tester.widgetList(flexWidgets).toList();
 
    // Check if the first and third Flexible widgets have flex = 1
    expect((flexChildren[0] as Flexible).flex, 1);
    expect((flexChildren[2] as Flexible).flex, 1);
 
    // Check if the middle Flexible widget has flex = 2
    expect((flexChildren[1] as Flexible).flex, 2);
  });
}