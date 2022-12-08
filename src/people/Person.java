
package people;

// Java code to implement SQL GROUP BY
  
import java.util.*;
  
// Create the employee class
class Person {
  
    public int x;
    public int y;
    public int t_id;
    public String time;
    public String name;
    public int img_id;
  
    public Person(int x, int y, int t_id, String time, String name, int img_id)
    {
        this.x = x;
        this.y = y;
        this.t_id = t_id;
        this.time = time;
        this.name = name;
        this.img_id = img_id;
    }
  
    
  
//    public static void main(String[] args)
//    {
//  
//        // create the employee list
//        List<Person> empData
//            = new ArrayList<Person>();
//  
//        // add values to list by
//        // using the add() method
//        // of the list interface
//        empData.add(new Person(1, "Ajay",
//                                 25, "Technical", 35000));
//        empData.add(new Person(3, "Chandan",
//                                 22, "Technical", 30000));
//        empData.add(new Person(4, "Arjun",
//                                 30, "Management", 54000));
//        empData.add(new Person(2, "Arun",
//                                 28, "Sales", 9000));
//        empData.add(new Person(8, "Anmol",
//                                 40, "Sales", 15000));
//        empData.add(new Person(9, "Vivek",
//                                 20, "Management", 8000));
//        empData.add(new Person(10, "Nikhil",
//                                 27, "Sales", 7000));
//        empData.add(new Person(5, "Rahul",
//                                 45, "Management", 60000));
//        empData.add(new Person(6, "Ganesh",
//                                 32, "Sales", 35000));
//        empData.add(new Person(7, "Vishal",
//                                 35, "Technical", 40000));
//        empData.add(new Person(11, "Anmol",
//                                 23, "Sales", 15000));
//        empData.add(new Person(12, "Vivek",
//                                 29, "Management", 8000));
//        empData.add(new Person(13, "Nikhil",
//                                 30, "Technical", 7000));
//  
//        System.out.println("\n Employee list"
//                           + " before sorting...\n");
//        System.out.println(" ID    Name    Age"
//                           + "    Department  Salary  \n");
//  
//        for (Person e : empData) {
//            System.out.format(" %2d  %7s   %d   %10s    %d \n",
//                              e.empid, e.name, e.age, e.dept, e.salary);
//        }
//  
//        // Sorting the list by department
//        // and age by using the thenComparing() method
//        Collections.sort(empData,
//                         new DepartmentComparator()
//                             .thenComparing(new AgeComparator()));
//  
//        System.out.println("\n Employee list after sorting...\n");
//        System.out.println(" ID    Name    Age    Department  Salary  \n");
//        for (Person emp : empData) {
//            System.out.format(" %2d  %7s   %d   %10s    %d \n",
//                              emp.empid, emp.name, emp.age,
//                              emp.dept, emp.salary);
//        }
//    }
//}
    
}
  
class DepartmentComparator implements Comparator<Person> {
  
    public int compare(Person e1, Person e2)
    {
        return e1.dept.compareTo(e2.dept);
    }
}
  
class AgeComparator implements Comparator<Person> {
  
    public int compare(Person e1, Person e2)
    {
  
        if (e1.age == e2.age)
            return 0;
        else if (e1.age > e2.age)
            return 1;
        else
            return -1;
    }
}