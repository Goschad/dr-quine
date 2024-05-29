'''
    out
'''

def FT(x):
    f = open('Grace_kid.py', 'w')
    a = "'''\n    out\n'''\n\ndef FT(x):\n    f = open('Grace_kid.py', 'w')\n    a = %r\n    f.write(a%%a)\n    f.close()\n\nFT(0)\n"
    f.write(a%a)
    f.close()

FT(0)
