import SwiftCodeApplicationArguments
import SwiftCodeFileCreate

//let argumentsString = " ".join(CommandLine.arguments)

let first = CommandLine.arguments.removeFirst()

print("first command was \(first)")

let arguments = SwiftCodeApplicationArguments(rawValue: CommandLine.arguments.joined(separator: " ") )!

switch arguments {

    case .help:
        print("help option is called")

    case .create:
        
        var createArguments = CommandLine.arguments
        _ = createArguments.removeFirst()

        let createCommand = SwiftCodeCreateFileArguments(rawValue: createArguments.joined(separator: " "))!

        let command = SwiftCodeCreateFile(name: "my file name" , type: createCommand.fileType )
        command.execute()

    case .invalidNumberArguments:

        print("invalid number of arguments provided")

        print("display help options")

    case .unknownCommand:

        print("unknown command")

        print("display help options")
    
    default: break
}
