@RestResource(urlMapping = '/webhook')
global class WhatsAppWebhookAPI {

    @HttpGet
    global static void doGet() {
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        if(request.params.get('hub.verify_token') == 'test-token') {
            response.responseBody = Blob.valueOf(request.params.get('hub.challenge'));
        }
    }
    
    @HttpPost
    global static void doPost() {
        system.debug('Whatsapp Message :: ' + RestContext.request.requestBody.toString());
        Account acc = new Account();
        acc.Name = RestContext.request.requestBody.toString();
        insert acc;
    }
}