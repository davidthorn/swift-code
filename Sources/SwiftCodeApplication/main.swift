import SwiftCodeApplicationArguments

//let argumentsString = " ".join(CommandLine.arguments)

_ = CommandLine.arguments.removeFirst()

let arguments = SwiftCodeApplicationArguments(rawValue: CommandLine.arguments.joined(separator: " ") )!


print("hello world \(arguments)")