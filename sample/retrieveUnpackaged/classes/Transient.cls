public class Transient {

DateTime T1;

transient DateTime T2;

    public String getT2() {
    if(T2==null)T2=system.now();
        return ''+T2;
    }


    public String getT1() {
    
    if (T1==null)T1=system.now();
        return ''+T1;
    }

}