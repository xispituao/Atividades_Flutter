import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  double _hitPercentage = 0.0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', 'true'),
    Question('You can lead a cow down stairs but not up stairs.', 'false'),
    Question(
        'Approximately one quarter of human bones are in the feet.', 'true'),
    Question('Will I pass the period?', 'maybe')
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  double getHitPercentage() {
    return (_hitPercentage / _questionBank.length) * 100;
  }

  void incrementHitPercentage() {
    _hitPercentage++;
  }

  String finalMessage() {
    return 'Congratulations on completing the quiz! Your hits: ' +
        getHitPercentage().toString() +
        '%';
  }

  void reset() {
    _questionNumber = 0;
    _hitPercentage = 0.0;
  }
}
