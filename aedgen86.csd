;
;   *-*-*   AEDGEN86.CSD   *-*-*
;
;   This submit file generates AEDIT for iRMX I.
;
;   Invocation:  submit aedgen(sys_dir, version_char)
;
;     where: start_dir is the pathname to the system libraries directory.
;            version_char is 'x' if an internal version is to be generated or
;                         is 'v' if a release version is to be generated.
;
af $ as f1
af %0lib as f2
af ^obj as obj
af ^lst as lst

delete :obj:*.obj, :lst:*.lst

submit :F1:aedpex

submit :F1:aedplm86

submit :F1:aedbnd86(%0, %1)
;
;   AEDIT for iRMX I is generated.
;
