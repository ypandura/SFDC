@isTest
Private class Booktest{
@isTest
static void validatebook(){
book__c b=new Book__c(name='My Book',price__c=100);
system.debug('Original'+b.price__C);
insert b;
book__C b1=[select price__C from Book__C where id=:b.ID];
system.debug('new'+b1.price__C);
system.assertequals(90,b1.Price__C);
}

}