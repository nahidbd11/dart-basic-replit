
/******
final is initialized when it is accessed;
if we dont use final variable it will not initialized


const is initialized when it is compile;
no matter we use the variable or not;

var i=5; var initialzed type of variable i as int on compile time automatic. so we cant assign string in i variable; like i="nahid" will throw an error;

int? i; this means int i=null; this is nullable variable. it's default value is null or it's value can be changed;

int i; it is non-nullable variable and it should be defined before it is used;

late int i; without defined or initialzed it and assign value of i later.lazy initialization;


int? a;
a??=6; // output a=6; same as js nullis coallesing operator a=a??6;
*******/


void main() {
  String nonnullable;
//   print(nonnullable);
  var numb=5; //var will set type int of numb variable in compile time
//   numb="nahid"; //will show error 
//  dynamic s= Student('nahid',11); //type of s object is not fixed;it can be type Student or type Teacher
  final s=Student("nahid",11); //object type and value is fixed on runtime;cant re assigned
//   s.name="khalid"; // const obj can't be modified;
//  s=Teacher('rahim','physics'); //will give error because s is a final typee of Student and it can't reassign again
//   print(s.showTeacher());
  print(s.showStudent());


  const w=const Wife("shapla");
  print(w.name);
  // w.name="name cant be changed as class is const";


 late int i;
   i=5; //the value of i initialize later lazy initialization;
  print(i);

  int? a;
  a??=10; // this is same as a=a??10; if the value left side is null then show default value of right side ;same as nulliscoallesign operator in js;
  print(a);//output is 10

  final v; //type of v is dynamic
  final int x;//type of x is fixed;
  v=5; // now the value of v is fixed
  print(v);

}



class Student{
  final String name;final int roll;
    Student(this.name,this.roll); // if we use const constructor then we should define variable with final keyword
  
  String showStudent(){
    return '${this.name} roll no is ${this.roll}';
  }
}

class Teacher{
  final String name;final String subject;
    Teacher(this.name,this.subject); // if we use const constructor then we should define variable with final keyword
  
  String showTeacher(){
    return '${this.name}  is teacher of  ${this.subject}';
  }
}

//const class

class Wife{
 final String name;
  const Wife(this.name); //if we use const constructor then variable should be final
  
}


