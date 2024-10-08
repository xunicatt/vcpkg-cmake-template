.PHONY: install build run clean full-clean
all: install build run

PRESET=vcpkg
PROJECT=main
BUILD=build

install:
	vcpkg install
	PROJECT=$(PROJECT) cmake --preset=$(PRESET)

build:
	PROJECT=$(PROJECT) cmake --build $(BUILD)

run:
	./$(BUILD)/$(PROJECT)

clean:
	PROJECT=$(PROJECT) cmake --build $(BUILD) --target clean

full-clean:
	rm -rf $(BUILD) vcpkg_installed .cache
