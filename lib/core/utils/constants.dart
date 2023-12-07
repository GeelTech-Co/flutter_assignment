class Constants {
  static const baseUrl = 'https://potatotech.mocklab.io.potato-co.com/api/';

  static const List<Map<String, dynamic>> itemsList = [
    {"id": 1, "name": "phone1", "price": 1111},
    {"id": 2, "name": "mountain1", "price": 2434},
    {"id": 3, "name": "animal1", "price": 222}
  ];
  static const List<Map<String, dynamic>> itemDetails = [
    {
      "id": 1,
      "imageUrl":
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pa ss/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg",
      "type": "phone",
      "related": [
        {"id": 2, "name": "mountain1", "price": 2434},
        {"id": 3, "name": "animal1", "price": 222}
      ]
    },
    {
      "id": 2,
      "imageUrl":
          "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
      "type": "nature",
      "related": [
        {"id": 1, "name": "phone1", "price": 1111},
        {"id": 3, "name": "animal1", "price": 222}
      ]
    },
    {
      "id": 3,
      "imageUrl":
          "https://ichef.bbci.co.uk/news/1024/cpsprodpb/AD45/production/_107275344_gettyimages-865512628.jpg",
      "type": "animals",
      "related": [
        {"id": 1, "name": "phone1", "price": 1111},
        {"id": 2, "name": "mountain1", "price": 2434},
      ]
    }
  ];
}
