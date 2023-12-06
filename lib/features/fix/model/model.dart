class Person {
  

  double getIdealWeight(double height, double age, bool isMale) {
  

    double factor = isMale ? 10.0 : 9.0;
    double result = height / age * factor;
    return result;
  }
}

 