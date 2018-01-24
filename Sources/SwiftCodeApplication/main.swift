import SwiftCodeApplicationArguments
import SwiftCodeCreate
import Foundation

//let argumentsString = " ".join(CommandLine.arguments)

let first = CommandLine.arguments.removeFirst()

let arguments = SwiftCodeApplicationArguments(rawValue: CommandLine.arguments.joined(separator: " ") )!

switch arguments {

    case .help:
        print("help option is called")

    case .create:
        
        var createArguments = CommandLine.arguments
        _ = createArguments.removeFirst()

        guard let createCommand = SwiftCodeCreateFileArguments(rawValue: createArguments.joined(separator: " ")) else {
            print("invalid argument")
            exit(12)
        }

        switch createCommand {
            case .unknownCommand, .invalidNumberArguments:
                print("unknown command or invalid number of arguments")
            default:
                let command = SwiftFile(name: createArguments[1] , type: createCommand.fileType )
                command.execute()
        }

        

    case .invalidNumberArguments:

        print("invalid number of arguments provided")

        print("display help options")

    case .unknownCommand:

        print("unknown command")

        print("display help options")
    
    default: break
}

