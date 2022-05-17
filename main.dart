void main() {
  var allan = Worker(name: "Allan");
  var zeus = Worker(name: "Zeus");
  var zellyDoll = Worker(human: false, name: "Zelly!");
  allan.whoIam();
  zeus.whoIam();
  zellyDoll.whoIam();
}

mixin Speaker {
  static String getFullName(List<String> fullName) => fullName.reduce((a, x) {
        return a + x;
      });
}

class Zelly {
  static const name = "Zelly";
}

class Space extends Zelly with Speaker {
  static const name = "Space";
  static var fullName = Speaker.getFullName([Zelly.name, name]);
}

class Worker extends Space with Human, NotaHuman {
  String name;
  String company = Space.fullName;
  bool human;

  Worker({this.human = true, required this.name});

  void whoIam() {
    if (human) {
      Human.say(name);
      print("I'm $name who work at $company");
    } else {
      NotaHuman.speak(name);
      print("I'm $name who live in $company");
    }
  }
}

class NotaHuman {
  static void speak(name) {
    print("I'm $name");
  }
}

class Human {
  static void say(name) {
    print("I'm $name");
  }
}
