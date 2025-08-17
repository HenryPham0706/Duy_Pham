// import "dart:io";

// void main() {
// //   bool isPrime(int n = 3){
// // if (n<=1) return false;
// // if (n==2)return true;
// // if (n%2==0)return false;
// // for(int i =3;i *i<=1;i +=2){
// //   if (n % i ==0)return false;

// // }
// // return true;
// int n =0;
// List<Student> students =[];
// Student findStudentById(String id,List<Student> list){
//   return list.firstWhere((e))
// }
// Student Student1 = Student ('duy',40,2025,'fultter3');
// Student Student2 = Student ('hieu',24,2023,'fultter3');
// Student2.introduce();
// Student1.introduce();
// }

//  class Student {
//   int? id;
//  String? name;
//   int? age;
//   String? grade;
//   Student(this.name,this.age,this.id,this.grade);
//  void introduce(){
//   print ('my name is $name,i am $age year old,ID :$id,i learn $grade');
//   static Student input
// // }
// // }
// void main (){

// print ('vui long nhap id :');
// int id = int.trypasrse(stdin.readLineSync()!) ?? 0 ;
// print ('vui long nhap ten :');
// String name = stdin.readLineSync()! ;
// print ('vui long nhap tuoi');
// int age = int.parse(stdin.readLineSync()!) ?? 0 ;
// print ('vui long nhap lop');
// String grade = stdin.readLineSync()! ;
// }
void main(){ 
  final accountNew = BankAccount(accountNumber:'000',balance:100,ownerName:'Nguyen');
  accountNew.withdraw(10);
  accountNew.checkBalance();
   accountNew.deposit(100);
    accountNew.checkBalance();
}

class BankAccount {
  String? accountNumber;
  String? ownerName;
  double balance;
  BankAccount ({this.accountNumber='',this.ownerName='',this.balance=0});
  void deposit (double money){
    balance += money;
  }
  void withdraw(double money){
    balance -=money;
  }
  void checkBalance(){
    print('so du la $balance');
  }
}

//git add mooiadd
//git commit -m "lydo"
//$ git push -f origin master

// hello

// hello 2

//wwwrewrewr
