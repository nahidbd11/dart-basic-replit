
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


