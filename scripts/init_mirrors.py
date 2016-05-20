import subprocess
import sys

for line in open(sys.argv[1]):
    [name, source, destination] = line.strip().split("|")
    subprocess.Popen(["git", "clone", "--mirror", source, name])
    subprocess.Popen(["git", "remote", "set-url", "--push", "origin", destination])
