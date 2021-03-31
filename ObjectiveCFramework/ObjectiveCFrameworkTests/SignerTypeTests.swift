import XCTest
import ObjectiveCFramework

class SignerTypeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSwiftExample() throws {
        let signerType = SignerType(rawValue: 0)
        XCTAssert(signerType?.rawValue == 0, "Base value for signerType != 0")
    }

    func testObjCExample() throws {
        let tabType = TabType(rawValue: 0)
        XCTAssert(tabType?.rawValue == 0, "Base value for tabType != 0")
    }

}
