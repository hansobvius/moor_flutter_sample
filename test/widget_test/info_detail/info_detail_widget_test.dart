import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

Widget createInfoDetailTest(){
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image.network(
                "",
                height: 250,
                fit: BoxFit.fill
              ),
              Text(
                "Lorem Ipsum",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal
                  )
              )
            ],
          )
        ),
      )
    ),
  );
}

void main(){

  group('info detail widget test', (){

    testWidgets('widget creation test', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(createInfoDetailTest()));
      await tester.pumpWidget(createInfoDetailTest());
    });
  });

}