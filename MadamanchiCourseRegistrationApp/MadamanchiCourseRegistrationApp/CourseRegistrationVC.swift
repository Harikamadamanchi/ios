//
//  CourseRegistrationVC.swift
//  MadamanchiCourseRegistrationApp
//
//  Created by Madamanchi,Harika on 2/6/23.
//

import UIKit

class CourseRegistrationVC: UIViewController {

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var courses : [String] = []
    @IBOutlet weak var messageLBL: UILabel!

    @IBOutlet weak var firstNameTF: UITextField!
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    @IBOutlet var courseSWCH: [UISwitch]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLBL.text = ""
        messageLBL.numberOfLines = 0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        let firstName = firstNameTF.text!
        let lastName = lastNameTF.text!
        
        if(firstName.isEmpty || lastName.isEmpty){
            messageLBL.text = "please enter your full name."
        }
        else if (courses.count > 0) {
                 messageLBL.text = "CONFIRMATION\n \(firstName),\(lastName) has successfully enrolled in \(courses.count) courses(s), namely "
           }
           else {
               messageLBL.text = "Hi \(firstName), \(lastName) please select the courses of your choice."
          }

    }

    @IBAction func onReset(_ sender: UIButton) {
        
        firstNameTF.text = ""
        lastNameTF.text = ""
        
        for course in courseSWCH {
            course.setOn(false, animated: false)
        }
        
        messageLBL.text = ""
        
    }
    
    @IBAction func toggleCourse(_ sender: UISwitch) {
        
        if sender.isOn == true {
            if sender.tag == 0 {
                courses.append("iOS")
            }
            else if(sender.tag == 1){
                courses.append("Patterns")
            }
            else{
                courses.append("Big Data")
            }

}
            if sender.tag == 0 {
                courses = courses.filter($0 != "iOS")
            }
            else if(sender.tag == 1){
                courses = courses.filter($0 != "Patterns")
            }
            else{
                courses.remove(at: 2)
            }

        
    }
}

