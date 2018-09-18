// File: Book.swift
// Purpose: <enter purpose>
// Date Created: 9/13/18
// Created By: Steven Penava

import Foundation

class Book {
    
    var bookTitle: String?
    var correspondingCourse: String?
    
    init(title: String, correspCourse: String) {
        bookTitle = title
        correspondingCourse = correspCourse
    }
}
