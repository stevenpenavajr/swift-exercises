// File: BookTableViewCell.swift
// Purpose: <enter purpose>
// Date Created: 9/13/18
// Created By: Steven Penava

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var correspCourseLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellInfo(book: Book?) {
        bookTitleLabel.text = book?.bookTitle
        correspCourseLabel.text = book?.correspondingCourse
    }

}
