import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;

  // Truyền đối số imageUrl vào trang DetailPage khi tạo
  DetailPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Nguyen Lam.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
