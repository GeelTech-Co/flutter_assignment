class Constants {
  static const baseUrl = 'https://potatotech.mocklab.io.potato-co.com/api/';

  static const List<Map<String, dynamic>> itemsList = [
    {"id": 1, "name": "item_1", "price": 10.99},
    {"id": 2, "name": "item_2", "price": 5.99},
    {"id": 3, "name": "item_3", "price": 1.99}
  ];
  static const List<Map<String, dynamic>> itemDetails = [
    {
      "id": 1,
      "imageUrl":
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pa ss/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg",
      "type": "phone",
      "related": [
        {"id": 2, "name": "item_2", "price": 5.99},
        {"id": 3, "name": "item_3", "price": 1.99}
      ]
    },
    {
      "id": 2,
      "imageUrl":
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pa ss/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg",
      "type": "phone",
      "related": [
        {"id": 2, "name": "item_2", "price": 5.99},
        {"id": 3, "name": "item_3", "price": 1.99}
      ]
    },
    {
      "id": 3,
      "imageUrl":
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pa ss/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg",
      "type": "phone",
      "related": [
        {"id": 2, "name": "item_2", "price": 5.99},
        {"id": 3, "name": "item_3", "price": 1.99}
      ]
    }
  ];
}
