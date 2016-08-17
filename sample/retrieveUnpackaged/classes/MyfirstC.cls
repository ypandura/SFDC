public with sharing class MyfirstC {

public string sortorder='lastname';
public list<contact> getContacts(){

    list<contact> result=database.query('select id,firstname,lastname '+'from contact ' + 'order By '+ sortorder + ' ASC ' + 'limit 10');
    return result;
                                  }
                                  public void sortBylastname(){
                                  this.sortorder='lastname';
                                  
                                  }
                                  public void sortByfirstname(){
                                  this.sortorder='firstname';
                                  
                                  }
                                  
                                  
}