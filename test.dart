//추상화 예제
void main(){
  Human allan= Human("Allan", true,time: 0);
  allan.yamyam();
  Human hubert=Human("Hubert",true, time : 1);
  hubert.yamyam();
}

class Human extends WhenUEat{
  String name;
  bool skipness;
  int time;
  Human(this.name,this.skipness,{required this.time});
  @override // <-annotation means I intend those things below. Don't get me wrong.
  void yamyam(){
    if(time>temp.length){
      return print("error");
    }
    print('$name ${skipness?"skip":"eat"} ${temp[time]}');
  }
}

class WhenUEat{
  List temp= ["breakfast","lunch","dinner"];

  void yamyam(){
    print("im not overrided!");
  }
}