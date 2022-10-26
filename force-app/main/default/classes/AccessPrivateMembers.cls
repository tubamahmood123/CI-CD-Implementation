public class AccessPrivateMembers {
    
    @TestVisible private Integer recordNumber = 0;
    @TestVisible private String areaCode = '234234';
    public Static Integer maxRecords = 1000;
    
    public Static void jk() {
        maxRecords = maxRecords + 200;
    }
    
    public Static void jk1() {
        maxRecords = maxRecords + 500;
    }
    
    public Static void kl () {
        system.debug(maxRecords);
    }

}