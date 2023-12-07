import '../../features/item/domain/entities/item.dart';

class Constance {
  static const String baseUrl = 'https://potatotech.mocklab.io.potato-co.com/api/';
  static const String pathLogin = 'login';
  static const String pathItem = 'items';
  static const String pathDeleteTask = 'todo/deleteTask';
  static const String pathTask = 'tasks';
  static const String empty = '';
  static const int zero = 0;
  static const String token = "SEND TOKEN HERE";
  static const int apiTimeOut = 60000;

  static num getIdealWeight(double height, int age, bool man) {
    if (man) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
  static List<Item>listOfItems =[
    const Item(id:1 ,name:"item_1" ,price: 10.99),

    const Item(id:2 ,name:"item_2" ,price: 5.99),

    const Item(id:3 ,name:"item_3" ,price: 1.99),
  ];
}
