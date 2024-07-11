import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_profile_app/main.dart'; // Correct this import path based on your project structure

void main() {
  testWidgets('Tabs are present and labeled correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the tab labels are correct.
    expect(find.text('Personal Info'), findsOneWidget);
    expect(find.text('Education'), findsOneWidget);
    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('Interests'), findsOneWidget);
    expect(find.text('Contact'), findsOneWidget);

    // Verify that the icons are present.
    expect(find.byIcon(Icons.person), findsOneWidget);
    expect(find.byIcon(Icons.school), findsOneWidget);
    expect(find.byIcon(Icons.code), findsOneWidget);
    expect(find.byIcon(Icons.star), findsOneWidget); // Changed to a valid icon
    expect(find.byIcon(Icons.contact_mail), findsOneWidget);
  });
}
