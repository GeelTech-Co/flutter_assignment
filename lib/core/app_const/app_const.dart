class AppConst {
  static const login = <String, dynamic>{
    "username": "username",
    "password": "password"
  };

  static const istOfItems = <String, dynamic>{
    'Statuscode': 200,
    'body': [
      {"id": 1, "name": "item_1", "price": 10.99},
      {"id": 2, "name": "item_2", "price": 5.99},
      {"id": 3, "name": "item_3", "price": 1.99}
    ]
  };

  static const listOfItemsDetails = <String, dynamic>{
    'Statuscode': 200,
    'body': {
      "id": 1,
      "imageUrl":
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pass/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg",
      "type": "phone",
      "related": [
        {"id": 1, "name": "item_1", "price": 10.99},
        {"id": 2, "name": "item_2", "price": 5.99},
        {"id": 3, "name": "item_3", "price": 1.99}
      ]
    }
  };

  static num getIdealWeight(double height, int age, bool man) {
    if (man) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
}
