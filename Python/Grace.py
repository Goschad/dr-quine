'''
    out
'''

def D0(x):
    return x

def D1(x):
    return x

def FT(x):
    f = open('Grace_kid.py', 'w')
    a = "'''\n    out\n'''\n\ndef D0(x):\n    return x\n\ndef D1(x):\n    return x\n\ndef FT(x):\n    f = open('Grace_kid.py', 'w')\n    a = %r\n    f.write(a%%a)\n    f.close()\n\nFT(0)\n"
    f.write(a%a)
    f.close()

FT(0)
