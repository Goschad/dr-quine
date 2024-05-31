index = 5

import subprocess, sys, os

if __name__ == '__main__':
    if index - 1 < 0:
        sys.exit()
    path = os.path.abspath(__file__)
    n_file = os.path.basename(path)
    if n_file != 'Sully.py':
        index -= 1
    f = open('Sully_' + str(index) + '.py', 'w')
    i = 'index = ' + str(index)
    a = "\n\nimport subprocess, sys, os\n\nif __name__ == '__main__':\n    if index - 1 < 0:\n        sys.exit()\n    path = os.path.abspath(__file__)\n    n_file = os.path.basename(path)\n    if n_file != 'Sully.py':\n        index -= 1\n    f = open('Sully_' + str(index) + '.py', 'w')\n    i = 'index = ' + str(index)\n    a = %r\n    f.write(i + a%%a)\n    f.close()\n    subprocess.run('python3 Sully_' + str(index) + '.py', shell = True, executable='/bin/bash')\n    sys.exit()"
    f.write(i + a%a)
    f.close()
    subprocess.run('python3 Sully_' + str(index) + '.py', shell = True, executable='/bin/bash')
    sys.exit()