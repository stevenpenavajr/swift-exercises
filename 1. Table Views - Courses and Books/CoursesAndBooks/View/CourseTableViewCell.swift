// File: CourseTableViewCell.swift
// Purpose: <enter purpose>
// Date Created: 9/13/18
// Created By: Steven Penava

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellInfo(course: Course?) {
        courseLabel.text = course?.courseTitle
        sectionLabel.text = "Section: " + course!.sectionNumber!
    }

}
