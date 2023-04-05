1. Write a java program that prints all real solutions to the quadratic equation ax2+bx+c=0. Read in a, b, c and use the quadratic formula. 
 
Aim: Introduce the java fundamentals, data types, operators in java 
 
PROGRAM : 
 
import java.util.Scanner; public class Quadratic 
{ public static void main(String[] args) { 
 
int a, b, c; 	// coefficients double root1, root2; 
System.out.println("Enter the coefficients"); 
Scanner in=new Scanner(System.in); a = in.nextInt(); b = in.nextInt(); c = in.nextInt(); 
 
// calculate the determinant (b2 - 4ac) 
double d = b * b - 4 * a * c; 
System.out.println("Determinant="+d); 
	if (d > 0) 	// check if determinant is greater than 0 
{ 
 
// two real and distinct roots 
root1 = (-b + Math.sqrt(d)) / (2 * a); root2 = (-b - Math.sqrt(d)) / (2 * a); 
System.out.println("The roots are real and distinct"); 
System.out.format("root1 = %.2f and root2 = %.2f", root1, root2); } 
 
	else if (d == 0) 	// check if determinant is equal to 0 
{ 
 
// two real and equal roots 
// determinant is equal to 0 
// so -b + 0 == -b root1 = root2 = -b / (2 * a); 
System.out.println("The roots are real and equal"); 
System.out.format("root1 = root2 = %.2f;", root1); } 
 
	else 	// if determinant is less than zero 
{ 
 
// roots are complex number and distinct 
double real = -b / (2 * a); 
double imaginary = Math.sqrt(-d) / (2 * a); System.out.println("The roots are imaginary"); 
System.out.format("root1 = %.2f+%.2fi", real, imaginary); 
System.out.format("\nroot2 = %.2f-%.2fi", real, imaginary); } 
} 
} 
 
OUT PUT: 
 
 
 
 
 
 
 
PROGRAM :2 
 
2. Create a Java class called Student with the following details as variables within it. 
USN 
Name 
Branch 
Phone 
Write a Java program to create n Student objects and print the USN, Name, Branch, and Phoneof these objects with suitable headings. 
 
Aim: Demonstrating creation of java classes, objects, constructors, declaration andinitialization of variables. 
 
PROGRAM : 
 
import java.util.*; public class Student 
{ 
String usn,name,branch; long phone; 
 
void insertStudent(String reg,String nm, String br,long ph) 
{ 
usn=reg; 
name=nm; branch=br; 
phone=ph; 
} 
 
void displayStudent() 
{ 
System.out.println("**********************"); 
System.out.println("USN= "+usn); 
System.out.println("NAME= "+name); 
System.out.println("BRANCH= "+branch); 
System.out.println("PHONE NUMBER= "+phone); 
System.out.println("**********************"); } 
 
public static void main(String args[]) 
{ 
Student st[]=new Student [100]; 
Scanner ip=new Scanner(System.in); 
System.out.println("Enter the number of students"); int n=ip.nextInt(); 
 
for(int i=0;i<n;i++) st[i]=new Student(); for(int j=0;j<n;j++) 
{ 
System.out.println("Enter the Usn,Name,Branch,Phone Number"); String usn=ip.next(); 
String name=ip.next(); String branch=ip.next(); long phone=ip.nextLong(); 
st[j].insertStudent(usn,name,branch,phone); 
 
} 
for( int m=0;m<n;m++) 
{ 
System.out.format("Student %d details are\n",m+1); st[m].displayStudent(); 
} 
 
} 
} 
 
OUTPUT: 
  
PROGRAM :3 
 
	3. 	A. Write a program to check prime number 
 
Aim: Discuss the various Decision-making statements, loop constructs in java 
 
PROGRAM :3A 
 
package primee;
import java.util.Scanner;
class primme
{
public static void main(String args[])
{
int i,n,flag=0;
System.out.println("Enter the number");
Scanner in = new Scanner(System.in);
n = in.nextInt();
int m = n/2;
if(n==0 || n ==1) {
	System.out.println("Number " +n+ " is prime");
}
for(i=2;i<=m;i++)
{
if(n%i==0)
{
	System.out.println("Number " +n+ " is not prime");
    flag=1;
    break;
}
}
if(flag==0)
{
System.out.println("The given number is a Prime");
		}
	}
}

 
OUTPUT: 
 
 
PROGRAM :3B 
 
3. B.Write a program for Arithmetic calculator using switch case menu 
 
import java.util.*; class Switch 
{ public static void main(String[] args) 
{ 
Scanner inp = new Scanner(System.in); 
System.out.println("Enter the Operator (+,-,*,/) : "); char operator = inp.next().charAt(0); 
System.out.println("Enter the First Operand : "); double first = inp.nextDouble(); 
System.out.println("Enter the Second Operand : "); double second = inp.nextDouble(); 
double result = 0; 
switch(operator) 
{ case '+': result = first + second; 
System.out.println("The Result is : "+first+" "+operator+" "+second+" = "+result); break; case '-': 
result = first - second; 
System.out.println("The Result is : \n "+first+" "+operator+" "+second+" = "+result); break; 
case '*': 
result = first * second; 
System.out.println("The Result is : "+first+" "+operator+" "+second+" = "+result); break; case '/': 
result = first / second; 
System.out.println("The Result is : \n "+first+" "+operator+" "+second+" = "+result); break; 
default : 
System.out.println("Invalid Operator"); break; 
} 
} } OUTPUT: 
  
PROGRAM :4 
  
4. Design a super class called Staff with details as StaffId, Name, Phone, Salary. Extend this class by writing three subclasses namely Teaching (domain, publications), Technical (skills), and Contract (period). Write a Java program to read and display at least 3 staff objects of all three categories. 
 
Aim: Demonstrate the core object-oriented concept of Inheritance, polymorphism 
 
PROGRAM: 
 
import java.util.Scanner; 
class Staff 
{ 
String staffId; String name; long phone; float salary; public void accept() 
{ 
Scanner scanner = new Scanner(System.in); 
System.out.print("Enter Staff Id: "); staffId = scanner.next(); 
System.out.print("Enter Name: "); name = scanner.next(); 
System.out.print("Enter Phone: "); phone = scanner.nextLong(); System.out.print("Enter Salary: "); salary = scanner.nextFloat(); 
 
} public void display() 
{ 
System.out.println("Staff Id: " + staffId); 
System.out.println("Name: " + name); 
System.out.println("Phone: " + phone); 
System.out.println("Salary: " + salary); } } 
class Teaching extends Staff 
{ 
String domain; int n; 
public void accept() 
{ super.accept(); 
Scanner scanner = new Scanner(System.in); System.out.print("Enter Domain: "); domain = scanner.next(); 
System.out.print("Enter Number of Publications: "); 
n = scanner.nextInt(); System.out.println("\n"); 
} public void display() 
{ super.display(); 
System.out.println("Domain: " + domain); 
System.out.println("Publications:"+n); 
System.out.println("\n"); 
} 
} 
class Technical extends Staff 
{ 
String skill; public void accept() 
{ super.accept(); 
Scanner scanner = new Scanner(System.in); System.out.print("Enter technical Skills: "); skill = scanner.nextLine(); System.out.println("\n"); 
} public void display() 
{ super.display(); 
System.out.println("Technical Skills: " + skill); 
System.out.println("\n"); 
} 
 
} 
class Contract extends Staff 
{ int period; public void accept() 
{ super.accept(); 
Scanner scanner = new Scanner(System.in); System.out.print("Enter Period: "); period = scanner.nextInt(); 
System.out.println("\n"); 
} public void display() 
{ super.display(); 
System.out.println("Contract Period: " + period); } 
} class Four 
{ public static void main(String[] args) 
{ 
Teaching teaching = new Teaching(); 
System.out.println("Enter the details of Teaching Staff"); teaching.accept(); 
 
Technical technical = new Technical(); 
System.out.println("Enter the details of Technical Staff"); technical.accept(); 
 
Contract contract = new Contract(); 
System.out.println("Enter the details of Contract Staff"); contract.accept(); 
 
System.out.println("The details of Teaching Staff"); teaching.display(); 
System.out.println("The details of Technical Staff"); technical.display(); 
System.out.println("The details of Contract Staff"); contract.display(); 
} 
}  
OUTPUT : 
 
 
PROGRAM :5 
  
5. Write a java program demonstrating Method overloading and Constructor overloading. 
 
Aim: Introduce concepts of method overloading, constructor overloading. 
 
PROGRAM:5A 
 
Demonstrating Method overloading 
class MOverloading 
{ 
//adding two integer numbers 
int add(int a, int b) 
{ int sum = a+b; return sum; 
} 
//adding three integer numbers int add(int a, int b, int c) 
{ int sum = a+b+c; return sum; 
} float add(float a, float b) 
{ float sum = a+b; return sum; 
} 
} class MOverload 
{ public static void main(String args[]) 
{ 
MOverloading obj = new MOverloading(); 
int s1=obj.add(10, 20); int s2=obj.add(10, 20, 30); float s3=obj.add(2.2f,2.2f); 
System.out.println("Method Overload Sum1="+s1); 
System.out.println("Method Overload Sum2="+s2); 
System.out.println("Method Overload Sum3="+s3); 
} 
} 
 
OUTPUT: 
 
 
PROGRAM:5B 
 
Constructor Overloading public class Constructor 
{ int id; 
String name; 
Constructor() 
{ 
System.out.println("This is Default constructor"); 
System.out.println("Student Id : "+id + "\nStudent Name : "+name); 
} 
Constructor(int i, String n) 
{ 
System.out.println("This is Parameterized Constructor:"); id = i; 
name = n; 
System.out.println("Student Id : "+id + "\nStudent Name : "+name); 
} 
public static void main(String[] args) 
{ 
Constructor s = new Constructor(); 
Constructor student = new Constructor(10, "David"); } 
} 
 
 
OUTPUT: 
  
PROGRAM :6 
  
6. Develop a java application to implement currency converter (Dollar to INR, EURO to INR, Yen to INR and vice versa), distance converter (meter to KM, miles to KM and vice versa), time converter (hours to minutes, seconds and vice versa) using packages. 
 
Aim: Introduce the concept of Abstraction, packages. 
 
PROGRAM: 
 
CurrencyC.java 
 
package cc; import java.util.*; public class CurrencyC 
{ double inr,usd; double euro,yen; 
Scanner in=new Scanner(System.in); 
public void dollartorupee() 
{ 
System.out.println("Enter dollars to convert into Rupees:"); usd=in.nextInt(); inr=usd*81.83; 
System.out.println("Dollar ="+usd+" equal to INR="+inr); 
System.out.println("\n"); 
} 
public void rupeetodollar() 
{ 
System.out.println("Enter Rupee to convert into Dollars:"); inr=in.nextInt(); usd=inr/81.83; 
System.out.println("Rupee ="+inr+"equal to Dollars="+usd); 
} public void eurotorupee() 
{ 
System.out.println("Enter Euro to convert into Rupees:"); euro=in.nextInt(); inr=euro*79.06; 
System.out.println("Euro ="+euro+" equal to INR="+inr); System.out.println("\n"); 
} 
public void rupeetoeuro() 
{ 
System.out.println("Enter Rupees to convert into Euro:"); inr=in.nextInt(); euro=(inr/79.06); 
System.out.println("Rupee ="+inr +"equal to Euro="+euro); System.out.println("\n"); } 
public void yentoruppe() 
{ 
System.out.println("Enter Yen to convert into Rupees:"); yen=in.nextInt(); inr=yen*0.57; 
System.out.println("Yen ="+yen+" equal to INR="+inr); System.out.println("\n"); 
} 
public void ruppetoyen() 
{ 
System.out.println("Enter Rupees to convert into Yen:"); inr=in.nextInt(); yen=(inr/0.57); 
System.out.println("INR="+inr +"equal to YEN"+yen); 
System.out.println("\n"); 
} 
} 
 
DistaceC.Java 
 
package dc; import java.util.*; public class DistanceC 
{ double km,m,miles; 
Scanner in=new Scanner(System.in); public void mtokm() 
{ 
System.out.println("Enter the distance in meter"); 
m=in.nextDouble(); km=(m/1000); 
System.out.println(m+"m" +" is equal to "+km+"km"); 
System.out.println("\n"); } 
public void kmtom() 
{ 
System.out.println("Enter the distance in Kilometer"); 
km=in.nextDouble(); m=km*1000; 
System.out.println(km+"km" +" is equal to "+m+"m"); System.out.println("\n"); 
} 
public void milestokm() 
{ 
System.out.println("Enter the distance in miles"); miles=in.nextDouble(); km=(miles*1.60934); 
System.out.println(miles+"miles" +" is equal to "+km+"km"); 
System.out.println("\n"); } 
public void kmtomiles() 
{ 
System.out.println("Enter the distance in km"); 
km=in.nextDouble(); miles=(km*0.621371); 
System.out.println(km+"km" +" is equal to "+miles+"miles"); 
} 
} 
 
TimeC.java 
 
package tc; import java.util.*; public class TimeC 
{ int hours,seconds,minutes; 
Scanner in = new Scanner(System.in); public void hourstominutes() 
{ 
System.out.println("Enter the no of Hours to convert into minutes"); hours=in.nextInt(); minutes=(hours*60); 
System.out.println("Minutes: " + minutes); 
} 
public void minutestohours() 
{ 
System.out.println("Enter the no of Minutes to convert into Hours"); minutes=in.nextInt(); hours=minutes/60; 
System.out.println("Hours: " + hours); 
} 
public void hourstoseconds() 
{ 
System.out.println("Enter the no of Hours to convert into Seconds"); hours=in.nextInt(); seconds=(hours*3600); 
System.out.println("Seconds: " + seconds); 
} 
public void secondstohours() 
{ 
System.out.println("Enter the no of Seconds to convert into Hours"); seconds=in.nextInt(); hours=seconds/3600; 
System.out.println(seconds+"seconds"+ " is equal to "+hours+"hour"); 
} 
} 
 
Main Class 
 
import cc.*; import dc.*; import tc.*; public class Main 
{ public static void main(String args[]) 
{ 
CurrencyC obj=new CurrencyC(); 
DistanceC obj1=new DistanceC(); 
TimeC obj2=new TimeC(); 
 
obj.dollartorupee(); obj.rupeetodollar(); 
 
obj.eurotorupee(); obj.rupeetoeuro(); 
 
obj.yentoruppe(); obj.ruppetoyen(); 
 
obj1.mtokm(); obj1.kmtom(); 
 
obj1.milestokm(); obj1.kmtomiles(); 
 
obj2.hourstominutes(); obj2.minutestohours(); 
 
obj2.hourstoseconds(); obj2.secondstohours(); 
} 
} 
 
OUTPUT: 
Enter dollars to convert into Rupees:1 
Dollar =1.0 equal to INR=81.83 
 
Enter Rupee to convert into Dollars: 80 
Rupee =80.0equal to Dollars=0.977636563607479 
 
Enter the distance in meter :1000 
1000.0m is equal to 1.0km 
 
Enter the distance in Kilometre :1 
1.0km is equal to 1000.0m 
 
Enter the no of Hours to convert into minutes: 1 Minutes: 60 
 
Enter the no of Minutes to convert into Hours: 60 
Hours: 1 
 
 :7
 
7. Write a program to generate the resume. Create 2 Java classes Teacher (data: personal information, qualification, experience, achievements) and Student (data: personal information, result, discipline) which implements the java interface Resume with the method biodata(). 
 
Aim: Introduction to abstract classes, abstract methods, and Interface in java 
 
PROGRAM: 
 
interface Resume 
{ void biodata(); 
} 
class Teacher implements Resume 
{ 
String name,qualification,achievements; float experience; public void biodata() 
{ name="Imran Ulla Khan"; qualification="M.Tech"; achievements="Q1 publication"; experience=14.8f; 
System.out.println("Teacher Resume"); 
System.out.println("Name : " +name); 
System.out.println("Qualification : "+qualification); 
System.out.println("Achievements : "+achievements); System.out.println("Experience : "+experience); 
} 
} 
class Student implements Resume 
{ 
String name,discipline; float result; 
public void biodata() 
{ 
name="Rahul Sharma"; result=9.8f; 
discipline="Computer Science and Engineering"; 
System.out.println(""); 
System.out.println("Student Resume"); 
System.out.println("Name : " +name); 
System.out.println("Result : "+result+" cgpa"); 
System.out.println("Discipline : "+discipline); 
} 
} 
 
public class InterfaceP 
{ 
public static void main(String[] args) 
{ 
Teacher obj1=new Teacher(); obj1.biodata(); 
 
Student obj2=new Student(); 
obj2.biodata(); 
} 
} 
 
OUTPUT: 
   
 :8
 
8. Write a Java program that implements a multi-thread application that has three threads. First thread generates a random integer for every 1 second; second thread computesthe square of the number and prints; third thread will print the value of cube of the number. 
 
 
Aim: Demonstrate creation of threads using Thread class and Runnable interface, multi- threaded programming. 
 
PROGRAM : 
 
import java.util.Random; class Square extends Thread 
{ int x; 
Square(int n) 
{ x = n; 
} public void run() 
{ int sqr = x * x; 
System.out.println("Square of " + x + " = " + sqr ); 
} 
} 
 
class Cube extends Thread 
{ int x; 
Cube(int n) 
{ x = n; 
} public void run() 
{ int cub = x * x * x; 
System.out.println("Cube of " + x + " = " + cub ); 
} 
} class Rnumber extends Thread 
{ public void run() 
{ 
Random random = new Random(); 
for(int i =0; i<5; i++) 
{ int randomInteger = random.nextInt(10); 
System.out.println("Random Integer generated : " + randomInteger); 
Square s = new Square(randomInteger); 
s.start(); 
Cube c = new Cube(randomInteger); 
c.start(); try 
{ 
Thread.sleep(1000); 
} catch (InterruptedException ex) 
{ 
System.out.println(ex); 
} 
} 
} 
} 
 
public class ThreadP 
{ public static void main(String[] args) 
{ 
Rnumber n = new Rnumber(); 
n.start(); 
 
} 
} 
 
 
OUTPUT: 
 
 
 :9
 
9. Write a program to perform string operations using ArrayList. Write functions for the following a. Append - add at end b. Insert – add at particular index c. Search d. List all string starts with given letter. 
Aim: Introduce java Collections. 
import java.util.*; public class ArrayL { 
ArrayList<String> list=new ArrayList<String>(); 	//Creating arraylist public void arraydisplay() 
{ list.add("CSE");//Adding object in arraylist 
list.add("ISE"); list.add("ME"); 
System.out.println("ArrayList element are"); 
System.out.println(list); 
System.out.println(""); 
} 
public void appendatend() 
{ 
System.out.println("Enter the element to append at end"); 
Scanner scob1=new Scanner(System.in); 
String ele=scob1.next(); list.add(ele); 
System.out.println(list); 
System.out.println(""); 
} 
public void insertatpos() 
{ 
System.out.println("Enter the position and element to insert"); 
Scanner scob1=new Scanner(System.in); 
int posind=scob1.nextInt(); String ele=scob1.next(); list.add(posind,ele); System.out.println(list); 
System.out.println(""); 
} 
public void searchele() 
{ 
System.out.println("Enter the Array element to search"); 
Scanner scobj=new Scanner(System.in); 
String arele=scobj.next(); int in=list.indexOf(arele); if(in==-1) 
{ 
System.out.println("Element not found"); } 
else  
	{ 	 
 	System.out.println("Element found at "+in); 
} 
} 
void print() 
{ 
Scanner nip=new Scanner(System.in); 
System.out.println("Enter the starting charecter to print strings"); char inputc=nip.next().charAt(0); String strc=Character.toString(inputc); 
System.out.println("String starting with character "+strc); for(int i=0;i<list.size();i++) 
{ if(list.get(i).startsWith(strc)) 
{ 
System.out.println(list.get(i)); } 
} } public static void main(String args[]) 
{ 
ArrayL obj=new ArrayL(); obj.arraydisplay(); obj.appendatend(); obj.insertatpos(); obj.searchele(); obj.print(); 
} 
} 
 
 
OUTPUT: 
 
 
 
PROGRAM :10
 
10. Write a Java program to read two integers a and b. Compute a/b and print, when bis not zero. Raise an exception when b is equal to zero. 
Aim: Exception handling in java, introduction to throwable class, throw, throws, finally 
import java.util.*; public class TryP 
{ int c; 
void div(int a,int b) 
{ try 
{ c=a/b; 
System.out.println("Result="+c); 
} 
catch(ArithmeticException e) 
{ 
System.out.println("Cannot divide by zero"); } } 
public static void main(String args[]) 
{ 
TryP obj=new TryP(); 
Scanner in=new Scanner(System.in); 
System.out.println("Enter the values of a and b"); int no1=in.nextInt(); int no2=in.nextInt(); obj.div(no1,no2); 
} 
} 
 
 
OUTPUT: 
program 12
import java.applet.Applet;
import java.awt.Graphics; 
public class AppletP extends Applet
{
	public void main paint(Graphics g) {
		g.drawString("WELCOME",100,150);
	}
}
calculator

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

class CalculatorP implements ActionListener
{
    JFrame frame;
    JTextField t;
    JButton b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,bdot,badd,bdiff,bmul,bdiv,beq,bclr;

    static double a=0,b=0,res=0;
    static int op=0;
    
    public void Display()
    {
        frame = new JFrame();

        frame.setTitle("Calculator");
        frame.setSize(255,300);
        frame.setLayout(null);
        frame.setBackground(Color.BLACK);
        frame.setVisible(true);
        frame.setResizable(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        t = new JTextField();
        t.setBounds(30,10,165,35);

        b0 = new JButton("0");
        b0.setBounds(30,50,45,40);
        b1 = new JButton("1");
        b0.setBounds(70,50,45,40);
        b2 = new JButton("2");
        b2.setBounds(110,50,45,40);
        b3 = new JButton("3");
        b3.setBounds(150,50,45,40);

        b4 = new JButton("4");
        b4.setBounds(30,90,45,40);
        b5 = new JButton("5");
        b5.setBounds(70,90,45,40);
        b6 = new JButton("6");
        b6.setBounds(110,90,45,40);
        b7 = new JButton("7");
        b7.setBounds(150,90,45,40);

        b8 = new JButton("8");
        b8.setBounds(30,130,45,40);
        b9 = new JButton("9");
        b9.setBounds(70,130,45,40);
        bdot = new JButton(".");
        bdot.setBounds(110,130,45,40);
        badd = new JButton("+");
        badd.setBounds(150,130,45,40);

        bdiff = new JButton("-");
        bdiff.setBounds(30,170,45,40);
        bmul = new JButton("*");
        bmul.setBounds(70,170,45,40);
        bdiv = new JButton("/");
        bdiv.setBounds(110,170,45,40);
        beq = new JButton("=");
        beq.setBounds(150,170,45,40);

        bclr = new JButton("CLR");
        bclr.setBounds(30,210,165,40);

        Component[] components={t,b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,bdot,badd,bdiff,bmul,bdiv,beq,bclr};

        for (Component c:components)
        {
            frame.add(c);
        }

        b0.addActionListener(this);
        b1.addActionListener(this);
        b2.addActionListener(this);
        b3.addActionListener(this);
        b4.addActionListener(this);
        b5.addActionListener(this);
        b6.addActionListener(this);
        b7.addActionListener(this);
        b8.addActionListener(this);
        b9.addActionListener(this);
        badd.addActionListener(this);
        bdiff.addActionListener(this);
        bmul.addActionListener(this);
        bdiv.addActionListener(this);
        beq.addActionListener(this);
        bclr.addActionListener(this);
        bdot.addActionListener(this);

    }

    public void actionPerformed(ActionEvent e)
    {
        if (e.getSource()==bclr)
        {
            t.setText("");
        }
        if (e.getSource()==b0)
        {
            t.setText(t.getText().concat("0"));
        }
        if(e.getSource()==b1)
        {
            t.setText(t.getText().concat("1"));
        }
        if(e.getSource()==b2)
        {
            t.setText(t.getText().concat("2"));
        }
        if(e.getSource()==b3)
        {
            t.setText(t.getText().concat("3"));
        }
        if(e.getSource()==b4)
        {
            t.setText(t.getText().concat("4"));
        }
        if(e.getSource()==b5)
        {
            t.setText(t.getText().concat("5"));
        }
        if(e.getSource()==b6)
        {
            t.setText(t.getText().concat("6"));
        }
        if(e.getSource()==b7)
        {
            t.setText(t.getText().concat("7"));
        }
        if(e.getSource()==b8)
        {
            t.setText(t.getText().concat("8"));
        }
        if(e.getSource()==b9)
            t.setText(t.getText().concat("9"));
        if(e.getSource()==bdot)
        {
        t.setText(t.getText().concat("."));
        }
        if(e.getSource()==badd)
        {
        a=Double.parseDouble(t.getText()); op=1;
        t.setText("");
        }
        if(e.getSource()==bdiff)
        {
        a=Double.parseDouble(t.getText()); op=2;
        t.setText("");
        }
        if(e.getSource()==bmul)
        {
        a=Double.parseDouble(t.getText()); op=3;
        t.setText("");
        }
        if(e.getSource()==bdiv)
        {
            a=Double.parseDouble(t.getText());
            op =4;
            t.setText("");
        }
        if(e.getSource()==beq)
        {
            b=Double.parseDouble(t.getText());
            switch(op)
            {
                case 1:
                res = a+b;
                break;

                case 2:
                res=a-b;
                break;

                case 3:
                res=a*b;
                break;

                case 4:
                res=a/b;
                break;
            }
            
            t.setText(""+res);
        }
    }
}

public class CalculatorLab
{
    public static void main(String[]args)
    {
        CalculatorP obj = new CalculatorP();
        obj.Display();
    }
}
