import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('does my baby marry👰 me?', true),
    Question('will my queen cry😭 today?', false),
    Question('is \'Mahal\' an ANGEL😇?', true),
    Question('property🥰 of mine?', true),
    Question('is she my lobster👩 ', true),
    Question('is she queen of heaven😍', true),
    Question('is she cheating😡 on me', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber < _questionBank.length-1) {
      print('isFinished is returnig false');

      return false;
    }
    else {
      print('isFinished is returnig true');
      return true;
    }
  }

  //Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

  void reset() {
    print(isFinished());

    _questionNumber = 0;
  }



  // Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
}
