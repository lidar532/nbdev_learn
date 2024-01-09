# Makefile for nbdev_learn
# W. Wright 2024-0107
#
# Frequently used nbdev commands:
#   nbdev_new               ; Configure and populate a new project.
#   nbdev_export            ; Convert notebook(s) to python module(s).
#   nbdev_docs              ; Generate associated project doc files.
#   nbdev_prepare           ; Prepare project for github commit, and push.
#   nbdev_clean             ; Clean stuff from notebooks that mess with doing difs.
#   nbdev_bump_version      ; Bump your project version number up by one unit.
#   nbdev_help              ; Show help for all nbdev commands.
#
#   All nbdev commands
#     nbdev_bump_version    nbdev_filter          nbdev_migrate         nbdev_release_both
#     nbdev_changelog       nbdev_fix             nbdev_new             nbdev_release_gh
#     nbdev_clean           nbdev_help            nbdev_prepare         nbdev_release_git
#     nbdev_conda           nbdev_install         nbdev_preview         nbdev_sidebar
#     nbdev_create_config   nbdev_install_hooks   nbdev_proc_nbs        nbdev_test
#     nbdev_docs            nbdev_install_quarto  nbdev_pypi            nbdev_trust
#     nbdev_export          nbdev_merge           nbdev_readme          nbdev_update

export:
	nbdev_export			# Process notebooks to package files.

install:
	pip install nbdev_learn		# Install in your `site-packages`

docs:
	rm -rv _docs			# have to remove _doc.
	nbdev_docs			# Generate new Quarto docs.

dev_install:
	nbdev_bump_version		# Bump version since we are installing
	pip install -e .		# Install for dev, (not in site-packages)

prep:
	nbdev_prepare			# Prepare for push to github runs, clean, test, export

clean:
	nbdev_clean
