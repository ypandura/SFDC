public class Mysecond {

public Account account{get;set;}

public Mysecond(){

ID id= apexpages.currentPage().getParameters().get('id');
account = (id == null)? new Account():
 [select name from account where Id= :id];

}

  public pageReference save(){
  try{
  
  upsert account;
  
  }catch(system.DMLexception e){
  
  Apexpages.addMessages(e);
  return null; 
  
  }
  pageReference result= new Apexpages.StandardController(Account).view();
  return(result);
  
}

}