/**
 * Created by awalehassan on 2016-12-01.
 */
public class Multithreading implements Runnable {
    Semaphore sem;
    static int threadNum = 0;
    Thread t;
    int n, thisThreadNum;

    public Multithreading(Semaphore sem){ //constructor, takes in a semaphore object
        threadNum++;
        thisThreadNum = threadNum;
        System.out.println("\n"+thisThreadNum + " is created");
        this.sem = sem;
        t = new Thread(this); //creates new thread
    }

    public void start(){
        t.start();
    } //method to start thread

    public void run(){ //while customer at teller, runs for a random amount of time, then signals semaphore
        try {
                System.out.print(thisThreadNum + " at a teller \n");
                n = (int) (Math.random() * 10 + 1);
                Thread.sleep(10 * n);
                System.out.print(thisThreadNum + " leaving teller\n");
                sem.Signal();

            }catch(InterruptedException e){
                System.out.println("thread is interrupted\n");
            }

    }




}
