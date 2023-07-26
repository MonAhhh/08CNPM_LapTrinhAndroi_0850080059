import 'package:flutter/material.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Đặt trang chủ là HomeScreen
      home: HomeScreen(),
      // Định nghĩa các route cho ứng dụng
      routes: {
        '/detail': (context) => DetailPage(
              imageUrl: 'https://200lab-blog.imgix.net/2021/07/image-18.png',
            ),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Home Screen',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredBox(
                  color: Colors.blue,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),
                ColoredBox(
                  color: Colors.green,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),
                ColoredBox(
                  color: Colors.orange,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Hình ảnh có link và sử dụng InkWell để điều hướng tới trang chi tiết khi nhấn vào
            InkWell(
              onTap: () {
                // Điều hướng tới trang chi tiết khi hình ảnh được nhấn
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: {
                    'imageUrl':
                        'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
                  },
                );
              },
              child: Image.network(
                'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Điều hướng tới trang chi tiết khi hình ảnh được nhấn
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: {
                    'imageUrl':
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdy0a9dAcfXGFsn0OtbqwZSaCWjFKtl2xWmGFde_U6&s',
                  },
                );
              },
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdy0a9dAcfXGFsn0OtbqwZSaCWjFKtl2xWmGFde_U6&s',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Điều hướng tới trang chi tiết khi hình ảnh được nhấn
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: {
                    'imageUrl':
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSARpiCRWD8U4P1NyAHth9H4_xDFLSfaGy6Xg&usqp=CAU',
                  },
                );
              },
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSARpiCRWD8U4P1NyAHth9H4_xDFLSfaGy6Xg&usqp=CAU',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút
              },
              child: Text('Click Here'),
            ),
          ],
        ),
      ),
    );
  }
}
