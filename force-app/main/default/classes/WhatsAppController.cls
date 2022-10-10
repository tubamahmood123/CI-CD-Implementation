public class WhatsAppController {

   @AuraEnabled
    public static void sendWhatsappMsg() {
        
        String body = '{ "messaging_product": "whatsapp", "to": " 923448026914", "type": "template", "template": { "name": "integration", "language": { "code": "en" } } }';
        String endPoint = 'https://graph.facebook.com/v14.0/107178048839246/messages';
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Authorization','Bearer EAAIsfc1OCmoBALvweuDnQIZBcApbrZBDMkyKJskituUYBCyQQtORc5BftuTfgZCkdXuYm7tKHv2UX6qczFsBZAcdbHSIZCx6BtbVD0AlgjKOHbr3QsBO0NwFAO4r0fMduQVxhjQOtoZAAqUnqZCwqcmIvVpSdfRrfIxWf7rD1MrzIOw072jP7c2oUf5vyI4raqPaICFP2nJeAZDZD');
 		request.setEndpoint(endpoint);
        request.setMethod('POST');
        request.setBody(body);
        Http http1 = new Http();
        HTTPResponse res = http1.send(request);
        
    }
}