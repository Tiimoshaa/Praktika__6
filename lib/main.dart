import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/vertical_screen1': (context) => VerticalScreen1(),
        '/vertical_screen2': (context) => VerticalScreen2(),
        '/horizontal_screen1': (context) => HorizontalScreen1(),
        '/horizontal_screen2': (context) => HorizontalScreen2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String platform;
    if (Platform.isAndroid) {
      platform = 'Android';
    } else if (Platform.isIOS) {
      platform = 'iOS';
    } else if (Platform.isLinux) {
      platform = 'Linux';
    } else if (Platform.isMacOS) {
      platform = 'macOS';
    } else if (Platform.isWindows) {
      platform = 'Windows';
    } else {
      platform = 'неизвестная платформа';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Приложение запущено на: $platform'), // Вывод информации о платформе
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/vertical_screen1'); //МАРШРУТНАЯ
              },
              child: Text('Вертикальная навигация'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/horizontal_screen1');
              },
              child: Text('Горизонтальная навигация'),
            ),
          ],
        ),
      ),
    );
  }
}

class VerticalScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вертикальный экран 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/vertical_screen2');
              },
              child: Text('Перейти к экрану 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);  // СТРАНИЧНАЯ
              },
              child: Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}

class VerticalScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вертикальный экран 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Горизонтальный экран 1'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/horizontal_screen2');
              },
              child: Text('Перейти к экрану 2'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Горизонтальный экран 2'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Вернуться назад'),
            ),
          ],
        ),
      ),
    );
  }
}
