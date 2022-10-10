@RestResource(urlMapping = '/api/GitHubWebhook')
global class GitHubWebhookSubscription {
    @HttpPost
    global static void handleNotification() {
        try {
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
        }
        catch(Exception e) {
            system.debug('Exception Happend'+e.getMessage());
        }
    }

}