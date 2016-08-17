trigger afdel on Account (after delete) {
account acc=new account();
//string s;
if(trigger.isafter){
for(account a:trigger.old){

if(a.name =='Appl0012800000nWMn1AAG'){
string s=a.id;

acc.name='Apple'+s;}


}

insert acc;
}
}