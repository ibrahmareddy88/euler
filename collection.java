import java.util.*;
import java.util.Collections;

public class Collection {
        public static void main(String[] args) {
        List list = Arrays.asList("komal girish mahendra amit 
                    mahendra".split(" "));
        List sublist = Arrays.asList("vineet");
        List searchList = Arrays.asList("mahendra");
        System.out.println("Elements in list : " + list);
        // create a copy of defined list and print objects of copy list.
        Collections.copy(list, sublist);
        System.out.println("copy of list : " + list);
        // find and display maximum and minimum object value from list.
        System.out.println("object of max value : " + Collections.max(list));
        System.out.println("object of min value : " + Collections.min(list));
        // find and display index of first occurance of sublist in the list.
        System.out.println("First index of 'mahendra': " + 
                         Collections.indexOfSubList(list, searchList));
        // find and display index of last occurance of sublist in the list.
        System.out.println("Last index of 'mahendra': " +
                     Collections.lastIndexOfSubList(list, searchList));
        // replace all objects in list by a new given object.
        Collections.replaceAll(list, "mahendra", "replaced");
        System.out.println("After replace all 'mahendra': " + list);
        // list in reverse order.
        Collections.reverse(list);
        System.out.println("List in reverse order: " + list);
        // rotate the given number of objects in list,here 4
        Collections.rotate(list, 4);
        System.out.println("After rotation : " + list);
        // find size of the list
        System.out.println("Size of the list : " + list.size());
        /* Swap element in list. here swap specified element with 
           element at 0th(first) position */
        Collections.swap(list, 0, list.size() - 1);
        System.out.println("List after swapping : " + list);
        // Replace all the element with given element using fill()
        Collections.fill(list, "mahendra");
        System.out.println("After filling all 'mahendra' in list : "
                                 + list);
        /* ncopies() returns immutable list consisting of copies 
             of the specified object. */
        List raviList = Collections.nCopies(3, "Ravi");
        System.out.println("List created by ncopy() " + raviList);

        // getting an enum type of specified list through enumeration().
        Enumeration e = Collections.enumeration(raviList);
        Vector v = new Vector(); // create a vector object.
        while (e.hasMoreElements()) {
            
            // add elements in vector from enum type.
            v.addElement(e.nextElement());  
        }
        ArrayList arrayList = Collections.list(v.elements());
        System.out.println("arrayList: " + arrayList);
    }
}