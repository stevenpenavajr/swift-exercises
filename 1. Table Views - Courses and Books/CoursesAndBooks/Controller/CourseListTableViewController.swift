// File: CourseListTableViewController.swift
// Purpose: Show list of courses as a table view
// Date Created: 9/13/18
// Created By: Steven Penava

import UIKit

class CourseListTableViewController: UITableViewController {
    
    var courseList: [Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Course List"
        
        // Add courses
        courseList.append(Course(title: "CS 485G: iOS Programming", section: "003"))
        courseList.append(Course(title: "CS 316: Web Programming", section: "001"))
        courseList.append(Course(title: "CS 499: Senior Design", section: "001"))
        courseList.append(Course(title: "EES 150: Earthquakes and Volcanoes", section: "001"))
        courseList.append(Course(title: "A-S 280: Photography", section: "201"))
        courseList.append(Course(title: "MKT 300: Marketing Management", section: "001"))
        courseList.append(Course(title: "CS 115 (TA): Intro to Programming", section: "003"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath) as? CourseTableViewCell {
            cell.setupCellInfo(course: courseList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    // MARK: - Navigation

    // Segue preparation - setting which class was selected, title of book list based on class
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is BookListTableViewController {
            if let indexPath = tableView.indexPathForSelectedRow{
                let vc = segue.destination as? BookListTableViewController
                vc?.bookListingTitle = courseList[indexPath.row].courseTitle!
            }
        }
    }
    
    // Perform segue to book list
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowBooks", sender: indexPath)
    }
 

}
