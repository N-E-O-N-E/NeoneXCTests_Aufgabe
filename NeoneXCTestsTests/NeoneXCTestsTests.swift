//
//  NeoneXCTestsTests.swift
//  NeoneXCTestsTests
//
//  Created by Markus Wirtz on 04.11.24.

import XCTest
@testable import NeoneXCTests

final class NeoneXCTestsTests: XCTestCase {
    
    var email1: String? // Gültig
    var email2: String? // Gültig
    var email3: String? // Ungültig
    var email4: String? // Ungültig
    var mailList: [String]? // Gültig
    
    override func setUpWithError() throws {
        email1 = "Max-84@one4All.com" // Gültig
        email2 = "susanna.1974@mail.forever.net" // Gültig
        email3 = "jüergen-müeller@web4you.de" // Ungültig
        email4 = "julia_weber@myDomaincom" // Ungültig
        mailList = validMails // Gültig
    }

    override func tearDownWithError() throws {
        email1 = nil
        email2 = nil
        email3 = nil
        email4 = nil
        mailList = nil
    }

    func testValidEmail() {
        XCTAssertTrue(validateEmail(email1!), "_Die EMail ist nicht gültig!")
        XCTAssertTrue(validateEmail(email2!), "_Die EMail ist nicht gültig!")
    }
    
    func testValidEMailList() {
        if (mailList?.count) != nil {
            for listLength in mailList! {
                XCTAssertTrue(validateEmail(listLength), "_Die EMail ist nicht gültig!")
            }
           
        }
    }
    
    func testInvalidEMail() {
        XCTAssertFalse(validateEmail(email3!), "_Die EMail ist nicht gültig!")
        XCTAssertFalse(validateEmail(email4!), "_Die EMail ist nicht gültig!")
    }

    func testPerformanceExample() throws {
        self.measure {
            if (mailList?.count) != nil {
                for listLength in mailList! {
                    XCTAssertTrue(validateEmail(listLength))
                }
            }
        }
    }
}
