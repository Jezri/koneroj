Mobile Computing
=====================

Three Prisoners # white hats h black hats problem
Prisoner in the front guess correctly

Means neither of the previous two prisoners could have guess

A sees bw wb and ww

but if b saw a black hat he would  guess he was white

Both remaining combinations have C as white

# Memory

A block of memeory is assigned whenever an veriable is decalred and used whenever a veriable is assigned a value. In java the memory is overwritten to zero before it is used to stop access of old data that was not over written. 

Whenever a class is used to creat a new object
    
    Student p = New Student("1")
    
p is a pointer to the object.

Java only has passes value for primative types and reference for objects. Assiging the value of one object to another object makes nuerous pointers to the same object, not to a clone of the object.

## functions

    public void doStuff(int k){
      k = 10;
    }

    doStuff(j);
    system.out.printLine(j) = 9

Copies the parameter passed to new memory address, by value.

      public void dostuff(Student s){
      s.name = "Mike"
      }

      doStuff(p2);
      system.out.printLine(p2) = "Mike"

### Exceptions

    Public student doStuff(student s){
    return 0;
    }
    
Is the same unless there is a new student being created

    Public Student otherStuff (Student s){
    Student k = new Student("4")
    k.name = "Jane"
    }

The parameters name is unchanged.
We dont delete objects if they still have pointers to it.
Garbage collection (Choose statergies)


# Class test on friday closed book but with eclipse
50% Programing.
50% Thoery about programing.
No bonus marks ()
Go over past papers
Interest groups?
From next week AI and games and robotics.
Probably not on wednesday
No more lectures

# Database helper

A javaclass that allows on to interact with an sqlite database
sql No multiuser support
No mutiquery
Solves the problem of persistance
Only saves to your device
2 command 

doQuery :: Sql command -> Cursor
  |select
doUpdate :: Sql command -> Long
  |update create reset

php
  Used to run on web servers.
  Used to store data on a mysql server
  Create a webservice which the app comunicates with, the webservice connects with mysql
  insert into users us

    public class Program{
      public static void main(String[] args){
        Point a = new Point(3,5);
        Point b = new Point(7,8);
        s.o.p(a.findDistance(6));
      }

    TeamTracker T = new TeamTracker("Arsenal"){
      t.add("Henry");
      t.add("Bergkamp");

    }
    }


