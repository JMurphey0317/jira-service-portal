# Jira Service Portal (Salesforce Package)

This Salesforce package provides an Aura-based Service Portal integrated with Jira.  
- **Jira-Users** can view, edit, and create their own Jira tickets from any Lightning page.
- **Jira-Admins** can access all tickets, manage user permissions, and configure integration settings.

## Features

- Place the `JiraPortal` component on any Lightning page.
- Users with **Jira-Users** permission can manage their Jira tickets.
- Users with **Jira-Admin** permission can access a configuration tab to manage permissions and integration settings.

## Setup Instructions

1. **Deploy to Salesforce**  
   Use Salesforce DX or your preferred metadata deployment tool.

   ```sh
   sfdx force:source:deploy -p force-app
   ```

2. **Assign Permission Sets**  
   Assign `Jira-Users` or `Jira-Admin` permission sets as needed.

3. **Jira Integration Configuration**  
   - Use the configuration tab (visible to admins) to set up Jira API endpoints and keys.
   - Update `JiraAppConfig__mdt` custom metadata as needed.

4. **Place Component**  
   Add the `JiraPortal` Aura component to any Lightning page via the Lightning App Builder.

## Directory Structure

- `aura/` - Aura components (JiraPortal, AdminConfig)
- `apex/` - Apex controllers for backend and Jira API logic
- `permissionsets/` - Permission set metadata
- `customMetadata/` - Custom metadata for configuration

## Notes

- This is a starter template; you must add your Jira API credentials and field mappings.
- You may need to extend the Apex controllers to connect to your specific Jira instance.

---