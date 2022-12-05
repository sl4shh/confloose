import os

dossier = ""
antidote = []
if os.name == 'nt':
    dossier = ".\\"
else:
    dossier = "./"

def confloose(chemin):
    i=0
    for filename in os.scandir(chemin):
        directory = filename.path.split("/")[:-1]
        i+=1
        if filename.is_file():
            if "py" not in filename.path and "antidote" not in filename.path:
              ls = directory[::]
              ls.append("U"+("w"*i)+"U")
              nf = "/".join(ls)
              print(filename.path," --> ",nf)
              antidote.append(f"mv {nf} {filename.path}\n")
              os.rename(filename.path,nf)
        else:
            confloose(filename.path)
            
confloose(dossier)

with open("antidote.sl4sh","w") as f:
  for e in antidote:
    f.write(e)
