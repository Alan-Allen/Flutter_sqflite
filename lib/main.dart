import 'package:flutter/material.dart';
import 'package:flutter_sqlite1/database/DBHelper.dart';

void main() async {
  // 初始化数据库
  await DB()._initDB();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQLite Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter SQLite Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // 在按钮点击时执行插入数据操作
              _insertData();
            },
            child: const Text('Insert Data'),
          ),
        ),
      ),
    );
  }

  void _insertData() async {
    // 调用 DB 类的 insert 方法插入数据
    await DB().insert('John Doe', 'johndoe@example.com', 'password123');
    print('Data inserted successfully!');
  }
}
