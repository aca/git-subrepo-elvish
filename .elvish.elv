#!elvish

#------------------------------------------------------------------------------
#
# TODO
#
#------------------------------------------------------------------------------

if (not (has-env GIT_SUBREPO_ROOT)) {
  use path
  var src_dir = (path:dir (src)[name])
  set paths = [$src_dir/lib $@paths]

  set-env GIT_SUBREPO_ROOT $src_dir

  # if (has-env MANPATH) {
  #   var manpath = (get-env MANPATH)
  #   if (eq $manpath '') {
  #     set-env MANPATH $src_dir/man:
  #   } else {
  #     set-env MANPATH $manpath':'$src_dir/man
  #   }
  # } else {
  #   set-env MANPATH $src_dir/man:
  # }
}
