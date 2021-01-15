

import 'question.dart';
class QuizBrain {
  int _QstNumber = 0;
  List<Question> _QuestionsList = [Question('المؤكسد هو كل فرد قادر على إكتساب إلكترون.', true ),
    Question('التحول السريع هو تفاعل كميائي يستغرق عدة ثواني أو دقائق',false ),
    Question('يمكن زمن نصف التفاعل من المقارنة بين تفاعلين من حيث السرعة',true ),
    Question('الهدف من إضافة الماء و الجليد قبل المعايرة هو من أجل معرفة نقطة التكافئ بدقة',false ),
    Question('سرعة تشكل فرد كميائي هي مقدار تغير التقدم بالنسبة للزمن',false),
    Question('السرعة الحجمية لتشكل فرد كميائي هي سرعة تشكل فرد كميائي في وحدة الحجم',true),
    Question('العامل الحركي هو كل مقدار يعمل على تغيير سرعة التفاعل',true),
    Question('الوساطة ثلاث أنواع متجانسة غير متجانسة إنزيمية',true),
    Question('الهدف من المتابعة بواسطة النقالية هي إجاد العلاقة بين التقدم و الناقلية',true),
    Question('الهدف من المتابعة بواسطة المعايرة هو إيجاد العلاقة بين حجم التكافئ و التقدم ',true),
    Question('الهدف من المتابعة بواسطة قياس حجم الغاز هي إجاد العلاقة بين التقدم و ضغط الغاز',false),
    Question('نكشف عن التكافئ بتغير لون الكاشف في المعايرة اللونية',false),

  ];
  void nextQst(){if (_QstNumber < _QuestionsList.length-1){ _QstNumber++;}}
  int getQstNumber(){return _QstNumber;}
  String getQst(){return _QuestionsList[_QstNumber].QstText;}
  bool getAnswer(){return _QuestionsList[_QstNumber].QstAnsewer;}
  bool isFinished() {if(_QstNumber == _QuestionsList.length-1) {
    return true;
  }
  }
  void resestQstNumber(){
    _QstNumber = -1;
  }
}