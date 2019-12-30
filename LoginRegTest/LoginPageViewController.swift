
import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var userLoginEmailTextField: UITextField!
    @IBOutlet weak var userLoginPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        let userLoginEmail = userLoginEmailTextField.text;
        print(userLoginEmail as Any);
        let userLoginPassword = userLoginPasswordTextField.text;
        print(userLoginPassword as Any);
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        print(userEmailStored as Any);
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        print(userPasswordStored as Any);
        
        /*// Check for empty fields
        if((userLoginEmail?.isEmpty)!){
            // Display alert message
            displayAllertMessage(userMessage: "Email ID field can't be empty!");
            return;
        }
        if((userLoginPassword?.isEmpty)!){
            // Display alert message
            displayAllertMessage(userMessage: "Password field can't be empty!");
            return;
        }
        
        // Email format validity*/
        

        
        if(userEmailStored == userLoginEmail){
            if(userPasswordStored == userLoginPassword){
                // Login is successful
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn");
                // Sync to save changes
                UserDefaults.standard.synchronize();
                print("Logged in");
                
                /*// Call next page (Reg more info)
                self.performSegue(withIdentifier: "regVerifiedCodeMoreDetailsView", sender: self);*/
                
                // Dismiss the login view as we don't need anymore
                self.dismiss(animated: true, completion: nil);
                
            }
        }
    }
    
    

}
