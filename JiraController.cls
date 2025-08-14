public with sharing class JiraController {
    @AuraEnabled(cacheable=true)
    public static List<Jira_Ticket__c> getUserTickets() {
        Id currentUserId = UserInfo.getUserId();
        // Query tickets linked to user, or fetch from Jira API
        return [SELECT Id, Subject__c, Status__c FROM Jira_Ticket__c WHERE OwnerId = :currentUserId];
    }
    @AuraEnabled(cacheable=true)
    public static Boolean isAdmin() {
        return ( [SELECT Id FROM PermissionSetAssignment WHERE PermissionSet.Name = 'Jira-Admin' AND AssigneeId = :UserInfo.getUserId() LIMIT 1].size() > 0 );
    }
    // Add methods for create/edit tickets, etc.
}