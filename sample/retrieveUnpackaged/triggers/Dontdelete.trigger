trigger Dontdelete on Account (before delete) {

    for(account a:[select id from account 
                  where id in(select accountid from opportunity) and
                  id in: trigger.old]){
                      
                      trigger.oldmap.get(a.id).addError('cant delete account with opportuntities');
                      
                  }    
}