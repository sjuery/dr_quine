#yey macrosish
ftc = open("Grace_kid.py", 'w')
string = "#yey macrosish%(nl)cftc = open(%(qt)cGrace_kid.py%(qt)c, 'w')%(nl)cstring = %(qt)c%(txt)s%(qt)c%(nl)cprintstuff = ftc.write((string %% {'tb': 9, 'nl': 10, 'qt': 34, 'txt': string}))%(nl)c"
printstuff = ftc.write((string % {'tb': 9, 'nl': 10, 'qt': 34, 'txt': string}))
