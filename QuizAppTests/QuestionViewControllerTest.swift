//
//  QuestViewControllerTest.swift
//  QuizAppTests
//
//  Created by Pawel Kacela on 24/05/2021.
//

import Foundation
import XCTest
@testable import QuizApp

class QuestionViewControllerTest: XCTestCase {
 

    func test_viewDidLoad_renderHeaderQuestionText() {
        let sut = QuestionViewController(question: "Q1", options: [])
        
        _ = sut.view
        XCTAssertEqual(sut.headerLabel.text, "Q1")
    }
    
    func test_viewDidLoad_withNoOptions_rendersZeroOptions() {
        let sut = QuestionViewController(question: "Q1", options: [])
        
        _ = sut.view
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 0)
    }
    
    func test_viewDidLoad_withOneOptions_rendersOneOptions() {
        let sut = QuestionViewController(question: "Q1", options: ["A1"])
        
        _ = sut.view
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
    
    func test_viewDidLoad_withOneOptions_rendersOneOptionsText() {
        let sut = QuestionViewController(question: "Q1", options: ["A1"])
        
        _ = sut.view
        
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = sut.tableView.dataSource?.tableView(sut.tableView, cellForRowAt: indexPath)
        
        
        XCTAssertEqual(cell?.textLabel?.text, "A1")
    }
}
