;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

;= CMake
ccpack="C:\Program Files\CMake\bin\cpack.exe" $*

;= WinMerge
winmerge="C:\Program Files\WinMerge\WinMergeU.exe" $*

;= Ninja
pninja=ptime ninja $*

;= Sublime
subl="C:\Program Files\Sublime Text\subl.exe" $*
smerge="C:\Program Files\Sublime Merge\smerge.exe" $*

;= Visual Studio Code
code="C:\Program Files\Microsoft VS Code\Code.exe" $*

;= Visual Studio aliases
vcvars64140="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" -vcvars_ver=14.0 $*
vcvars64141="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" -vcvars_ver=14.1 $*
vcvars64142="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" -vcvars_ver=14.2 $*

vcvars64="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" $*
vcvarsall="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" $*

;= Substance
designer="C:\Program Files\Allegorithmic\Substance Designer\Substance Designer.exe" $*
sdpython="C:\Program Files\Allegorithmic\Substance Designer\plugins\pythonsdk\python.exe" $*
painter="C:\Program Files\Allegorithmic\Substance Painter\Substance Painter.exe" $*
alchemist="C:\Program Files\Allegorithmic\Substance Alchemist\Substance Alchemist.exe" $*

sdpython="C:\Program Files\Allegorithmic\Substance Designer\plugins\pythonsdk\python.exe" $*
sppython="C:\Program Files\Allegorithmic\Substance Painter\resources\pythonsdk\python.exe" $*

;= ls aliases
l=ls --color=always --all --human-readable $*
ll=ls --color=always --all --human-readable -al $*

;= grep aliases
grep=grep --color=always $*

;= Git aliases from oh-my-zsh
g=git $*
ga=git add $*
gaa=git add --all $*
gap=git apply $*
gapa=git add --patch $*
gau=git add --update $*
gb=git branch $*
gba=git branch -a $*
gbd=git branch -d $*
gbl=git blame -b -w $*
gbnm=git branch --no-merged $*
gbr=git branch --remote $*
gbs=git bisect $*
gbsb=git bisect bad $*
gbsg=git bisect good $*
gbsr=git bisect reset $*
gbss=git bisect start $*
gc=git commit -v $*
'gc!'=git commit -v --amend $*
gca=git commit -v -a $*
'gca!'=git commit -v -a --amend $*
gcam=git commit -a -m $*
'gcan!'=git commit -v -a --no-edit --amend $*
'gcans!'=git commit -v -a -s --no-edit --amend $*
gcb=git checkout -b $*
gcd=git checkout develop $*
gcf=git config --list $*
gcl=git clone --recursive $*
gclean=git clean -fd $*
gcm=git checkout master $*
gcmsg=git commit -m $*
'gcn!'=git commit -v --no-edit --amend $*
gco=git checkout $*
gcount=git shortlog -sn $*
gcp=git cherry-pick $*
gcpa=git cherry-pick --abort $*
gcpc=git cherry-pick --continue $*
gcs=git commit -S $*
gcsm=git commit -s -m $*
gd=git diff $*
gdca=git diff --cached $*
gdct=git describe --tags `git rev-list --tags --max-count=1` $*
gdcw=git diff --cached --word-diff $*
gdt=git diff-tree --no-commit-id --name-only -r $*
gdw=git diff --word-diff $*
gf=git fetch $*
gfa=git fetch --all --prune $*
gfo=git fetch origin $*
gg=git gui citool $*
gga=git gui citool --amend $*
ggpur=ggu $*
ghh=git help $*
gignore=git update-index --assume-unchanged $*
gignored=git ls-files -v | grep "^[[:lower:]]" $*
git-svn-dcommit-push=git svn dcommit && git push github master:svntrunk $*
gk=\gitk --all --branches $*
gl=git pull $*
glg=git log --stat $*
glgg=git log --graph $*
glgga=git log --graph --decorate --all $*
glgm=git log --graph --max-count=10 $*
glgp=git log --stat -p $*
glo=git log --oneline --decorate $*
glog=git log --oneline --decorate --graph $*
gloga=git log --oneline --decorate --graph --all $*
glol=git log --graph --pretty=\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit $*
glola=git log --graph --pretty=\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all $*
glp=_git_log_prettily $*
glum=git pull upstream master $*
gm=git merge $*
gma=git merge --abort $*
gmom=git merge origin/master $*
gmt=git mergetool --no-prompt $*
gmtvim=git mergetool --no-prompt --tool=vimdiff $*
gmum=git merge upstream/master $*
gp=git push $*
gpd=git push --dry-run $*
gpoat=git push origin --all && git push origin --tags $*
gpristine=git reset --hard && git clean -dfx $*
gpu=git push upstream $*
gpv=git push -v $*
gr=git remote $*
gra=git remote add $*
grb=git rebase $*
grba=git rebase --abort $*
grbc=git rebase --continue $*
grbi=git rebase -i $*
grbm=git rebase master $*
grbs=git rebase --skip $*
grh=git reset HEAD $*
grhh=git reset HEAD --hard $*
grmv=git remote rename $*
grrm=git remote remove $*
grset=git remote set-url $*
grt=cd $(git rev-parse --show-toplevel || echo ".") $*
gru=git reset -- $*
grup=git remote update $*
grv=git remote -v $*
gsb=git status -sb $*
gsd=git svn dcommit $*
gsi=git submodule init $*
gsps=git show --pretty=short --show-signature $*
gsr=git svn rebase $*
gss=git status -s $*
gst=git status $*
gsta=git stash save $*
gstaa=git stash apply $*
gstc=git stash clear $*
gstd=git stash drop $*
gstl=git stash list $*
gstp=git stash pop $*
gsts=git stash show --text $*
gsu=git submodule update $*
gts=git tag -s $*
gtv=git tag | sort -V $*
gunignore=git update-index --no-assume-unchanged $*
gup=git pull --rebase $*
gupv=git pull --rebase -v $*
gwch=git whatchanged -p --abbrev-commit --pretty=medium $*
python3=py -3 $*  
