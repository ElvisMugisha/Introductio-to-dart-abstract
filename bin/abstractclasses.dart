abstract class Animal {
  void breathe(); // abstract method

  void makeNoise() {
    print("Making animal noises!");
  }
}

abstract class IsFunny {
  void makePeopleLaugh(); // abstract method which doesn't have a body
}

class TvShow implements IsFunny {

  @override
  void makePeopleLaugh() {
    print("This Tv show is funny and makes people laugh");
  }
}

class Comedian extends Person implements IsFunny {
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh() {
    print("Comedian making people laugh");
  }
}

class Person implements Animal {
  late String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breathe() {
    print("Person breathing through nostrils!");
  }

  @override
  void makeNoise() {
    print("Person making noises!");
  }

  @override
  String toString() {
    return "$name $nationality";
  }
}

void main(List<String> arguments) {

  var jenny = Person("Jennifer", "Rwandan");
  print(jenny);

}
