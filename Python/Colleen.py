
'''
    out
'''

def other():
    print('')

if __name__ == '__main__':
    other()
    '''
        in
    '''
    a="'''\n    out\n'''\n\ndef other():\n    print('')\n\nif __name__ == '__main__':\n    other()\n    '''\n        in\n    '''\n    a=%r\n    print(a%%a)\n"
    print(a%a)

