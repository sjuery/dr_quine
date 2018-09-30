def generate_string():
	return ("def generate_string():%(nl)c%(tb)creturn (%(qt)c%(txt)s%(qt)c)%(nl)c%(nl)cdef main():%(nl)c%(tb)ci = %(nbr)d%(nl)c%(tb)cif i > 0:%(nl)c%(tb)c%(tb)ctmpstring = %(qt)cSully_%%d.py%(qt)c %% i%(nl)c%(tb)c%(tb)ctry:%(nl)c%(tb)c%(tb)c%(tb)cftc = open(tmpstring, 'r')%(nl)c%(tb)c%(tb)c%(tb)cftc.close()%(nl)c%(tb)c%(tb)cexcept:%(nl)c%(tb)c%(tb)c%(tb)ci += 1%(nl)c%(tb)c%(tb)ci -= 1%(nl)c%(tb)c%(tb)ctmpstring = %(qt)cSully_%%d.py%(qt)c %% i%(nl)c%(tb)c%(tb)cftc = open(tmpstring, 'w')%(nl)c%(tb)c%(tb)cfilecontent = (generate_string() %% {'tb': 9, 'nl': 10, 'qt': 34, 'txt': generate_string(), 'nbr': i})%(nl)c%(tb)c%(tb)cftc.write(filecontent)%(nl)c%(tb)c%(tb)cftc.close()%(nl)c%(tb)c%(tb)cftc = open(tmpstring, 'r')%(nl)c%(tb)c%(tb)cexec(ftc.read())%(nl)c%(tb)c%(tb)cftc.close()%(nl)c%(nl)cmain()%(nl)c")

def main():
	i = 5
	if i > 0:
		tmpstring = "Sully_%d.py" % i
		try:
			ftc = open(tmpstring, 'r')
			ftc.close()
		except:
			i += 1
		i -= 1
		tmpstring = "Sully_%d.py" % i
		ftc = open(tmpstring, 'w')
		filecontent = (generate_string() % {'tb': 9, 'nl': 10, 'qt': 34, 'txt': generate_string(), 'nbr': i})
		ftc.write(filecontent)
		ftc.close()
		ftc = open(tmpstring, 'r')
		exec(ftc.read())
		ftc.close()

main()
