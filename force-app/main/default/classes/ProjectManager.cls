public class ProjectManager {

    // Method to create a new Project
    public void createProject(String name, Date startDate, Date endDate, Decimal budget) {
        Project__c newProject = new Project__c(
            Name = name,
            Start_Date__c = startDate,
            End_Date__c = endDate,
            Budget__c = budget
        );
        insert newProject;
    }

    // Method to retrieve all Projects
    public List<Project__c> getAllProjects() {
        return [SELECT Id, Name, Start_Date__c, End_Date__c, Budget__c FROM Project__c];
    }

    // Method to update a Project
    public void updateProject(Id projectId, String name, Date startDate, Date endDate, Decimal budget) {
        Project__c projectToUpdate = [SELECT Id, Name, Start_Date__c, End_Date__c, Budget__c FROM Project__c WHERE Id = :projectId];
        projectToUpdate.Name = name;
        projectToUpdate.Start_Date__c = startDate;
        projectToUpdate.End_Date__c = endDate;
        projectToUpdate.Budget__c = budget;
        update projectToUpdate;
    }

    // Method to delete a Project
    public void deleteProject(Id projectId) {
        Project__c projectToDelete = [SELECT Id FROM Project__c WHERE Id = :projectId];
        delete projectToDelete;
    }
}
