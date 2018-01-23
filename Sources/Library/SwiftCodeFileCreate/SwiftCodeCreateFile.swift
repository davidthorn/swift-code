import Foundation

public class SwiftCodeCreateFile {

    internal var type: SwiftCodeFileType

    internal var name: String

    public init(name: String , type: SwiftCodeFileType ) {
        self.name = name
        self.type = type
    }

    public func execute() {

        switch self.type {
            case .viewControllerFile:
                print("should create a view controller with name: \(self.name)")
            case .protocolFile:
                print("should create a protocol with name: \(self.name)")
            case .classFile:
                print("should create a class with name: \(self.name)")
            case .structFile:
                print("should create a struct with name: \(self.name)")
            case .enumFile:
                print("should create a enum with name: \(self.name)")
            case .empty:
                print("should create a empty with name: \(self.name)")
        }

    }

}