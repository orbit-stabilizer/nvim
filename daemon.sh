find . -name "*.fnl" -not -path "./master.fnl" | entr make -s
