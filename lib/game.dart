import 'dart:math';

class Game {  // camel case
  static const maxRandom = 100;
  int? _answer;     //  _ หน้าตัวแปรคือ private (private ของตัว package)
  int gcount = 0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num) {
    //ทายถูก return 0
    //มากไป return 1
    //น้อยไป return -1
    if(num > _answer!){
      gcount++;
      return 1;
    }
    else if(num < _answer!){
      gcount++;
      return -1;
    }
    else {
      gcount++;
      return 0;
    }
  }
}