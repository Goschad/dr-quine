index = 5

import subprocess, sys

if __name__ == '__main__':
    if index - 1 < 0:
        sys.exit()
    f = open('Sully_' + str(index - 1) + '.py', 'w')
    i = 'index = ' + str(index - 1)
    a = "\n\nimport subprocess, sys\n\nif __name__ == '__main__':\n    if index - 1 < 0:\n        sys.exit()\n    f = open('Sully_' + str(index - 1) + '.py', 'w')\n    i = 'index = ' + str(index - 1)\n    a = %r\n    f.write(i + a%%a)\n    f.close()\n    subprocess.run('python3 Sully_' + str(index - 1) + '.py', shell = True, executable='/bin/bash')\n    sys.exit()"
    f.write(i + a%a)
    f.close()
    subprocess.run('python3 Sully_' + str(index - 1) + '.py', shell = True, executable='/bin/bash')
    sys.exit()