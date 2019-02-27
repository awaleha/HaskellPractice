import com.sun.org.apache.xpath.internal.operations.Mult;

import java.util.LinkedList;
import java.util.Queue;

/**
 * Created by awalehassan on 2016-11-30.
 */
public class Semaphore {
    int count=0;
    Queue<Multithreading> queue;
    public Semaphore(int tellers){
        count = tellers;
        queue= new LinkedList<>();

    }

    public void Wait(Multithreading c){ //customer calls wait method from main
        if (count > 0) { //if tellers open, starts thread
            count--;
            c.start();
        }
        else {  //else, adds customer to queue
            System.out.print(c.thisThreadNum + " in queue\n");
            queue.add(c);
        }
    }

    public void Signal(){ //signal method, called in main when customer finished at teller
        if(!queue.isEmpty()) { //if teller open, sends thread at head of queue to teller
            count++;
                Wait(queue.remove());
        }
        else //else, increments teller counter
            count++;
    }
}
