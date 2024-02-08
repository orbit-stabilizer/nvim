all:
	> master.fnl
	cat keymaps.fnl >> master.fnl
	cat options.fnl >> master.fnl
	cat init.fnl >> master.fnl
	fennel --compile master.fnl > init.lua
	rm master.fnl
