debug: *.swift
	swiftc -o forrit *.swift
opt: *.swift
	swiftc -O -o forrit *.swift -o
