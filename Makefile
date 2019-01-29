defaultOptions = -o ./build/forrit ./Source/*.swift

debug: ./Source/*.swift
	swiftc  $(defaultOptions)
prod: ./Source/*.swift
	swiftc -O $(defaultOptions)
