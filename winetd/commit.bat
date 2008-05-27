svn commit --username mageslayer -F commit_comment.txt

if not errorlevel 1 goto end
cvs commit -F commit_comment.txt

:end