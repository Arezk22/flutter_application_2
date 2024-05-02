import 'dart:ffi';
import 'dart:typed_data';

import 'package:sqflite/sqflite.dart';

class DatebaseRepo {
  late Database myObject;
  initDb() async {
    myObject = await openDatabase(await getDatabasesPath() + '/product.db',
        version: 1, onCreate: (db, version) {
      db.execute('''CREATE TABLE Test 
          (id INTEGER PRIMARY KEY AUTOINREMENT,
           name TEXT NOT NULL,
           description TEXT,
           image BLOB,
           quantity INTEGER
           availableQuantity INTEGER,
           favorite INTEGER ,
           cart INTEGER, 

           )''');
    });
  }

  void insertProduct(String name, String desc, int Quantity,
      int AvailableQuantity, Uint8List image) {
    myObject.insert('product', {
      'name': name,
      'description': desc,
      'quantity': Quantity,
      'availableQuantity': AvailableQuantity,
      'image': image,
      'favorite': 0,
      'cart': 0,
    });
  }
}
