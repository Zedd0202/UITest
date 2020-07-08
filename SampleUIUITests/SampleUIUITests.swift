//
//  SampleUIUITests.swift
//  SampleUIUITests
//
//  Created by Zedd on 2020/07/03.
//

import XCTest

class SampleUIUITests: XCTestCase {

    override func setUpWithError() throws {
        self.continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_refactoring_something() {
        let app = XCUIApplication()
        let textField = app.textFields["textField"]
        textField.tap()
        textField.typeText("zzzz")
        let addButton = app.navigationBars["SampleUI.View"].buttons["Add"]
        addButton.tap()
        textField.typeText("ddddd")
        addButton.tap()
        textField.typeText("hhhh")
        addButton.tap()
    }
    
    func test_something() {
        
        let app = XCUIApplication()
        app.textFields["textFields"].tap()
        
        let zKey = app.keys["z"]
        zKey.tap()
        zKey.tap()
        zKey.tap()
        zKey.tap()
        
        let addButton = app.navigationBars["SampleUI.View"].buttons["Add"]
        addButton.tap()
        
        let dKey = app.keys["d"]
        dKey.tap()
        dKey.tap()
        dKey.tap()
        dKey.tap()
        dKey.tap()
        addButton.tap()
        
        let hKey = app.keys["h"]
        hKey.tap()
        hKey.tap()
        hKey.tap()
        hKey.tap()
        addButton.tap()
    }
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
