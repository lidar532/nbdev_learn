# Makefile for nbdev_learn
# W. Wright 2024-0107

export:
	nbdev_export

install:
	pip install nbdev_learn

make_docs:
	rm -rv _docs
	nbdev_docs

dev_install:
	nbdev_bump_version		# Bump version since we are installing
	pip install -e .		# Install for dev, (not in site-packages)

clean:
	nbdev_clean
