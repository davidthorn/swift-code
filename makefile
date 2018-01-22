run: link
	swift-code create class

compile:
	swift build --configuration=release --static-swift-stdlib
	
link: compile
	sudo rm -rf /usr/local/bin/swift-code
	sudo cp ./.build/x86_64-unknown-linux/release/SwiftCodeApplication /usr/local/bin/swift-code