import XCTest
import Foundation
@testable import SwiftCodeCreate

@testable import SwiftCode

class SwiftCodeTests: XCTestCase {


    var fileCreator: SwiftFile!

    func setup() {
        self.fileCreator = SwiftFile(name: "SwiftCode" , type: .viewControllerFile, extends: "UIViewController" , implements: [
            "UITableViewDelegate",
            "UITableViewDataSource"
        ])
    }

    func testCreatingClassFile() {
        
        self.setup()

        XCTAssertNotNil(FileManager.default, "there needs to be a file manager")

        XCTAssertEqual(FileManager.default.homeDirectoryForCurrentUser.path, "/home/david")

        let className = "SwiftCodeViewController"

        let _ = """

        import Foundation

        public class \(className) {

            public init() {

            }

        }


        """



        //let data = contents.data(using: .utf8)!

        self.fileCreator.execute()
        //let filePath = self.fileCreator.getFileNamePath(with: className , with: "swift" )

        //XCTAssertNotNil(filePath , "the file path must not be nil")

        //let result = FileManager.default.createFile(atPath: filePath! , contents: data)

        //XCTAssertEqual(result , true , "the result for creating the file should be true")

        //let exists = FileManager.default.fileExists(atPath: filePath! )

        //XCTAssertEqual(exists , true , "the tmp file should now exist")

        //try! FileManager.default.removeItem(atPath: filePath)

        //exists = FileManager.default.fileExists(atPath: filePath )

        //XCTAssertEqual(exists , false , "the tmp file should now not exist")

    }


    static var allTests = [
        ("testCreatingClassFile", testCreatingClassFile),
    ]
}
