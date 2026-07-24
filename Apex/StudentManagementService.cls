public with sharing class StudentManagementService {

    // Display welcome message
    public static void displayMessage() {
        System.debug('Welcome to Student Management System');
    }

    // Get all students
    public static List<Student__c> getAllStudents() {
        return [
            SELECT Id, Name, Roll_Number__c, Email__c, Phone__c,
                   Department__c, Year__c
            FROM Student__c
            ORDER BY Name
        ];
    }

    // Get all courses
    public static List<Course__c> getAllCourses() {
        return [
            SELECT Id, Name, Course_Code__c, Credits__c
            FROM Course__c
            ORDER BY Name
        ];
    }

    // Get all enrollments
    public static List<Enrollment__c> getAllEnrollments() {
        return [
            SELECT Id, Name,
                   Student__r.Name,
                   Course__r.Name,
                   Status__c,
                   Enrollment_Date__c
            FROM Enrollment__c
            ORDER BY CreatedDate DESC
        ];
    }
}
