svn commit --username mageslayer -F commit_comment.txt

if errorlevel 1 goto end
cvs commit -F commit_comment.txt

:end