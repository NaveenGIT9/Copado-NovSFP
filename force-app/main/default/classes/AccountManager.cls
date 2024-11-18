public class AccountManager {

    // Method to create a new Account
    public void createAccount(String name, String phone, String website) {
        Account newAccount = new Account(
            Name = name,
            Phone = phone,
            Website = website
        );
        insert newAccount;
    }

    // Method to retrieve all Accounts
    public List<Account> getAllAccounts() {
        return [SELECT Id, Name, Phone, Website FROM Account];
    }

    // Method to update an Account
    public void updateAccount(Id accountId, String name, String phone, String website) {
        Account accountToUpdate = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        accountToUpdate.Name = name;
        accountToUpdate.Phone = phone;
        accountToUpdate.Website = website;
        update accountToUpdate;
    }

    // Method to delete an Account
    public void deleteAccount(Id accountId) {
        Account accountToDelete = [SELECT Id FROM Account WHERE Id = :accountId];
        delete accountToDelete;
    }
}
