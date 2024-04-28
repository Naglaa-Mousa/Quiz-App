import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/data/models/question_models.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';
import 'custom_home_divide.dart';
import 'custom_result_dialog.dart';

class CustomHomeBody extends StatefulWidget {
  const CustomHomeBody({super.key});
  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}
class _CustomHomeBodyState extends State<CustomHomeBody> {
  List<QuestionModel> questions = [
 //QuestionModel(title: " nominal attributes such as", answers: [ "eye color", "weight", "GPA"], correctAnswer: "eye color", selectedAnswer: "null"),
 //QuestionModel(title:"is a set of entitiy and their characteristic" , answers: ["dara set", "record", "arrtibutes values"] , correctAnswer:"data set", selectedAnswer: null),
 //QuestionModel(title:"in complexity of k-mean, m*n is" , answers:["number of record","number of cluster","data set","none of them"] , correctAnswer:"data set" , selectedAnswer: null),
 //QuestionModel(title:"the best way to deal with missing values" , answers: ["estimate missing value","eliminate missing value","replace all possibles values"], correctAnswer:"estimate missing value" , selectedAnswer: null),
  QuestionModel(title: 'اول صحابي رفع رايه الاسلام', answers: ['حمزه بن عبدالمطلب','ابوبكر الصديق','علي بن ابي طالب','عثمان بن عفان'], correctAnswer: 'حمزه بن عبدالمطلب', selectedAnswer: 'null'),
  QuestionModel(title:'من الذي كان يلقب بأبي المساكين' , answers:['علي بن ابي طالب','جعفر بن ابي طالب','خالد بن الوليد','بلال بن رباح'] , correctAnswer:"جعفر بن ابي طالب" , selectedAnswer:'null' ),
  QuestionModel(title:'من هو حبر الامة وترجمان القران ' , answers: ['طلحه بن عبيد الله','خالد بن الوليد','عمر بن الخطاب','عبدالله بن العباس'], correctAnswer:'عبدالله بن العباس' , selectedAnswer:'null' ),

  ];
  changeSelectedAnswerTONull(){
    for(int i=0 ; i<questions.length ; i++){
      questions[i].selectedAnswer = null;
    }
  }





  int score = 0 ;
  checkScore( ) {
    for(int i   = 0 ;  i<questions.length ; i++ ) {

      if(questions[i].correctAnswer== questions[i].selectedAnswer ) {
        score += 10 ;
      }

    }
  }
  int questionIndex  = 0  ;
  plusQuestionIndex() {
    if(questionIndex <questions.length-1 ) {

      if(questions[questionIndex].selectedAnswer!=null){
        questionIndex++;
        setState(() {

        });
      }else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
      }
    }else{
      checkScore();
      showDialog(context: context, builder: (cont )
      {
        return CustomResultDialog(
          score: score,
          length: questions.length,
          click:(){
     questionIndex =0;
     score =0;
      changeSelectedAnswerTONull();
      Navigator.pop(context);
      setState(() {

      });
        }
        );
      } );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 45,),
          Text(questions[questionIndex].title ,
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 20
            ),
            textAlign: TextAlign.right,
          ) ,
          const SizedBox(height: 14,),
            CustomHomeDivider(),

          ...questions[questionIndex].answers.map(
                  (answer){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(answer),
                    Radio(
                      activeColor: AppColors.primaryColor,
                      value: answer,
                      groupValue:questions[questionIndex].selectedAnswer ,
                      onChanged: ( x) {
                        questions[questionIndex].selectedAnswer= x;
                        setState(() {
                        });
                      },
                    )
                  ],
                );
              }
          ),
             CustomHomeDivider(),
          const SizedBox(height: 14,),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8
                    ) ,
                  )),
                  backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)
              ),
              onPressed: ( ) {
                plusQuestionIndex();
              } , child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0),
            child: Text(
              questionIndex== questions.length-1  ?  AppTexts.send:     AppTexts.next,
              style: const TextStyle(
                  color: AppColors.white
              ),
            ),
          ))
        ],
      ),
    );
  }
}