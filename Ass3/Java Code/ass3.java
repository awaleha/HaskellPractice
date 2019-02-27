/**
 * Created by 
 Awale Hassan - 500704868
Michael Gorokhovsky - 500681974
Cassandra Ferworn - 500687062
 */
import java.util.Scanner; 
public class ass3 {
    static Semaphore sem;
    static Multithreading[] c;
    public static void main(String args[])
    {
    	System.out.println("How many customers would you like?");
    	Scanner scan = new Scanner(System.in);
		int i = scan.nextInt();
        System.out.print("First Test \n");
        print(i);
        System.out.print("\n \n Second Test \n");
        print(i);
        System.out.print("\n \n Third Test \n");
        print(i);

    }

    static public void print(int i){
        try {

            sem = new Semaphore(3); //creates new semaphore object
            c = new Multithreading[i]; //creates 10 customers
            for (int y = 0; y < i; y++) {
                c[y] = new Multithreading(sem); //initializes customer
                sem.Wait(c[y]); //sends customer to wait function
            }
            Thread.sleep(5000);
        }catch(InterruptedException e){
            System.out.println("thread is interrupted\n");
        }
    }

}
