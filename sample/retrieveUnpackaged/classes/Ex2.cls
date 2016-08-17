public class Ex2 {

private final Account acc;
    public Ex2(ApexPages.StandardController controller) {

acc= (Account)controller.getRecord();

    }
 public String getGreetings(){
 
 return ('Hello'+ acc.name+ '(' + acc.id+ ')');
 
 }
 
 Public String getfoo(){
 return 'foo1';
 }
}