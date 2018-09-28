#Generate String returns the string needed for the print
def generate_string():
	return ("#Generate String returns the string needed for the print%(nl)cdef generate_string():%(nl)c%(tb)creturn (%(qt)c%(txt)s%(qt)c)%(nl)c%(nl)cdef main():%(nl)c%(tb)c#prints the whole function%(nl)c%(tb)cprint (generate_string() %% {'tb': 9, 'nl': 10, 'qt': 34, 'txt': generate_string()})%(nl)c%(nl)cmain()")

def main():
	#prints the whole function
	print (generate_string() % {'tb': 9, 'nl': 10, 'qt': 34, 'txt': generate_string()})

main()
