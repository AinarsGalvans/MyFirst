//
//  MyFirstUITests.swift
//  MyFirstUITests
//
//  Created by Ainars Galvans on 12/1/17.
//  Copyright © 2017 Ainars Galvans. All rights reserved.
//

import XCTest
import AppCenterXCUITestExtensions

class MyFirstUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
      // XCUIApplication().launch()
        //.launch()
         ACTLaunch.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        ACTLabel.labelStep("End of test")
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(XCUIApplication().staticTexts["Hello world 2"].exists)
        ACTLabel.labelStep("Given the app has launched")
        
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.staticText, identifier:"Hello world 2").children(matching: .textField).element
        textField.tap()
        ACTLabel.labelStep("Start Typing text")
        textField.typeText("text")
        
        let deleteKey = app/*@START_MENU_TOKEN@*/.keys["delete"]/*[[".keyboards.keys[\"delete\"]",".keys[\"delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        deleteKey.tap()
        textField.typeText("-mex")
        
        ACTLabel.labelStep("Finish typing text")
        app.buttons["OK"].tap()

    }
    
    func _testToFail() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        ACTLabel.labelStep("Second test started")
        XCTAssert(XCUIApplication().staticTexts["Hello world!!!"].exists, "This assertion is expected to fail! I want to see a failure report")
        ACTLabel.labelStep("Second test must have failed")
        
    }
    
    func testOneMore(){
        ACTLabel.labelStep("Last test started")
        XCTAssertEqual(XCUIApplication().staticTexts.count,1,"Trivial test to explore reprting")
        
        
    }
    
    func testHelloWorldButton() {
        
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.button, identifier:"OK").children(matching: .textField).element
        textField.tap()
        textField.typeText("assad")
        app.buttons["OK"].tap()
        XCTAssert(app.staticTexts["Button pressed !"].exists)
        
        
    }
}
