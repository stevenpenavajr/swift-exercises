// File: BookListTableViewController.swift
// Purpose: show list of books
// Date Created: 9/13/18
// Created By: Steven Penava

import UIKit

class BookListTableViewController: UITableViewController {
    
    // Which class was selected and what course it pertains to
    var bookListingTitle = ""
    
    // Initializing lists of books to display based on user's press on previous view controller
    var cs485gBookList: [Book] = []
    var cs316BookList: [Book] = []
    var cs499BookList: [Book] = []
    var ees150BookList: [Book] = []
    var as280BookList: [Book] = []
    var mkt300BookList: [Book] = []
    var cs115BookList: [Book] = []
    
    // Dictionary of courses to book lists
    var coursesBooksDict:Dictionary = [String: [Book]]()
    
    // The list to use
    var currentBookList: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        createBookCollection()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: Table View functions
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentBookList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as? BookTableViewCell {
            cell.setupCellInfo(book: currentBookList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    // MARK: Segue functions
    override func viewWillAppear(_ animated: Bool) {
        currentBookList = coursesBooksDict[bookListingTitle]!
        self.title = bookListingTitle
        
    }
    
    // MARK: Data handling functions
    func createBookCollection() {
        coursesBooksDict["CS 485G: iOS Programming"] = [
            Book(title: "The Swift Programming Language", correspCourse: "Apple Inc."),
            Book(title: "Apple Developer Documentation", correspCourse: "Apple Inc.")
        ]
        coursesBooksDict["CS 316: Web Programming"] = [
            Book(title: "N/A", correspCourse: "N/A")
        ]
        coursesBooksDict["CS 499: Senior Design"] = [
            Book(title: "Software Engineering: Theory and Practice", correspCourse: "Prentice Hall"),
            Book(title: "Applying UML and Patterns", correspCourse: "Craig Larman"),
            Book(title: "Mythical Man Month, 2nd Edition", correspCourse: "Frederick P. Brooks")
        ]
        coursesBooksDict["EES 150: Earthquakes and Volcanoes"] = [
            Book(title: "Natural Disasters: Earthquakes and Volcanoes", correspCourse: "Patrick L. Abbott")
        ]
        coursesBooksDict["A-S 280: Photography"] = [
           Book(title: "The Camera Mind and Eye", correspCourse: "Minor White")
        ]
        coursesBooksDict["MKT 300: Marketing Management"] = [
            Book(title: "Marketing 2018 Edition", correspCourse: "William M. Pride & O.C. Ferrell")
        ]
        coursesBooksDict["CS 115 (TA): Intro to Programming"] = [
            Book(title: "Zybooks Online Book", correspCourse: "Zyante")
        ]
    }
}
