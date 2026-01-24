hello. if you are here then you are probably trying to sync nchaos from studio to github. its very simple.

1: download git and vs code if you havent already (also download luau extension inside vs!)
2: run "git clone https://github.com/Synapse512/NChaos.git" in your terminal   
   this creates a local repo that is also connected to the online one
   
3: find the directory on your computer (NChaos), just to confirm you have it   
4: open nightmare chaos on studio   

5: right click and click script sync on SharedMain (in ReplicatedStorage) with Shared, ServerMain (in ServerScriptService) with Server, and ClientMain (in StarterPlayerScripts) with Client.   
now, when you make changes in studio, or on your pc with the scripts, they all sync together :)
   
6: open vs code, open up NChaos folder   
7: in vs code terminal (open with "Ctrl" + "`")   
this is where you are gonna be running commands to make changes and stuff.   
and heres some of the essential things you will be using:

    git status                         - see what you changed
    git add .                          - stages all changes, do this if you wanna add new changes to repo
    git commit -m "this is a message"  - saves changes to git history with who did it, and what it is (leave what you changes as a message)
    git push                           - saves changes to online repo
    git fetch                          - gets info about new commits to online repo
    git pull                           - syncs commits to your local repo

ok that is it, i think. goodbye. do not break anything please.
