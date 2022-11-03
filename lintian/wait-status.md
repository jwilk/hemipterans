```console
$ grep -rw '>> [$]WAIT_STATUS_SHIFT'
lib/Lintian/Data/Authority/LintianManual.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Authority/DocBaseManual.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Authority/DocBaseManual.pm:    $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Authority/VimPolicy.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Authority/VimPolicy.pm:    $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Debhelper/Commands.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Debhelper/Commands.pm:        $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/InitD/VirtualFacilities.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/InitD/VirtualFacilities.pm:        $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Data/Policy/Releases.pm:    my $dpkg_status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Processable/Source/Patched.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Processable/Installable.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Processable/Diffstat.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Archive.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Archive.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Archive.pm:    $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Check/Documentation/Manual.pm:            my $status = ($exitcode >> $WAIT_STATUS_SHIFT);
lib/Lintian/Check/Documentation/Manual.pm:            my $status = ($exitcode >> $WAIT_STATUS_SHIFT);
lib/Lintian/IPC/Run3.pm:    my $status = ($exitcode >> $WAIT_STATUS_SHIFT);
lib/Lintian/IPC/Run3.pm:    my $status = ($exitcode >> $WAIT_STATUS_SHIFT);
lib/Lintian/Index.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Index.pm:            my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Lintian/Index.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Test/Lintian/Build.pm:        my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Test/Lintian/Hooks.pm:    my $status = ($? >> $WAIT_STATUS_SHIFT);
lib/Test/Lintian/Run.pm:            my $status = ($? >> $WAIT_STATUS_SHIFT);
```
