.PHONY: build

clean:
	rm -rf ./dist
	rm -rf ./*.egg-info

build:
	python setup.py bdist_wheel sdist

build2:
	pip3 install --upgrade build
	find build/lib
	python3 -m build --wheel --sdist

list:
	unzip -l dist/*.whl
	ls -la ./dist
	tar -tf dist/lmdb-*.tar.gz
