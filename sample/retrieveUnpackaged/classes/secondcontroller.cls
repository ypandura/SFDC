public class secondcontroller {

private final Account acc;

public secondcontroller(){
        acc=[select id,name,site from account where id= : apexpages.currentpage().getParameters().get('id')];


}

 public Account getAccount()
 {
 return acc;
 }
 
 public pageReference save(){
 update acc;
 return null;
 }
}