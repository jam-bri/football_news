import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:football_news/main.dart';

void main() {
  testWidgets('Login page renders correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Wait for all widgets to settle
    await tester.pumpAndSettle();

    // Check that username and password TextFields exist
    expect(find.byType(TextField), findsNWidgets(2));

    // Check that there is at least one Text widget with 'Login' (could be title or button)
    expect(find.text('Login'), findsWidgets);

    // Check that there is a button with 'Login' text
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);
  });
}
