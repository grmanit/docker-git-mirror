import subprocess
import sys

for line in open(sys.argv[1]):
    if line and not line.isspace() and line[0] != '#': # last check is a simple way to comment out lines
        [name, source, destination] = line.strip().split("|")
        subprocess.Popen(["git", "clone", "--mirror", source, name])
        subprocess.Popen(["git", "remote", "set-url", "--push", "origin", destination])
