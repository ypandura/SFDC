trigger afterdel on Account (after delete) {

account acc=new account();
string s;
for(account a:trigger.old){

acc=trigger.oldmap.get(a.id);
s=acc.id;

}

}