import Foundation


public class SwiftCodeCreateClass {

    internal var arguments: SwiftCodeCreateClassArguments

    public init(arguments: SwiftCodeCreateClassArguments ) {
        self.arguments = arguments
    }

    public func execute() {

        print("executing SwiftCodeCreateClass with \(self.arguments.rawValue)")

    }

}