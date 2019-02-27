/**
 * Created by awalehassan on 2016-11-30.
 */
public class Customer {
    static int totalCount = 0;
    int placeInLine;
    public Customer(){
        placeInLine = totalCount;
        totalCount++;
    }

    public int getPlace(){
        return placeInLine;
    }
}
