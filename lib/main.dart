class Car {
  late String brand;
  late String model;
  late int year;

  late double milesdriven;
   static int numberOfCars=0 ;
  Car(String brand, String model, int year, double milesdriven) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesdriven = milesdriven;


    numberOfCars++;

  }



  double drive(double miles) {
    return milesdriven = milesdriven + miles;
  }

  double getmilesdriven() {
    return milesdriven;
  }

  String getbrand() {
    return brand;
  }

  String getmodel() {
    return model;
  }

  int getyear() {
    return year;
  }

  int getage() {
    DateTime datetime = DateTime.now();

    int currentyear = datetime.year;
    return currentyear - this.year;
  }

  static int getNumberOfCars() {
    return numberOfCars;
  }
}



void main() {
  Car obj1 = Car('Chevrolet', 'Equinox', 2004, 43215678.0);
  Car obj2 = Car('Porsche', 'Cayenne', 2002, 33532.0);
  Car obj3 = Car('Bentley', 'Bentayga', 2015, 123987.0);

  obj1.drive(33.0);
  obj2.drive(44.0);
  obj3.drive(55.0);

  print('\n');
  print('car1 brand name : ${obj1.getbrand()}');
  print('car1 model name : ${obj1.getmodel()}');
  print('car1 year  :      ${obj1.getyear()}');
  print('car1 milesdriven :${obj1.getmilesdriven()}');
  print('car1 age  :       ${obj1.getage()} years');
  print('\n');

  print('car2 brand name : ${obj2.getbrand()}');
  print('car2 model name : ${obj2.getmodel()}');
  print('car2 year  :      ${obj2.getyear()}');
  print('car2 milesdriven :${obj2.getmilesdriven()}');
  print('car2 age  :       ${obj2.getage()} years');
  print('\n');

  print('car3 brand name : ${obj3.getbrand()}');
  print('car3 model name : ${obj3.getmodel()}');
  print('car3 year  :      ${obj3.getyear()}');
  print('car3 milesdriven :${obj3.getmilesdriven()}');
  print('car3 age  :       ${obj3.getage()} years');
  print('\n');

  print('Total number of car\'s object created: ${Car.getNumberOfCars()}');
}
