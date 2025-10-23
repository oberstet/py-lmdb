# LMDB Frozen

Build package variant ("LMDB-Frozen") of [lmdb](https://github.com/jnwatson/py-lmdb) with

* **bundled and patched LMDB**, and
* **using CFFI**

To build this package variant:

```
pip3 install --upgrade build
python3 -m build --wheel --sdist
```

This will result in two files (*wheel* and *source distribution*):

```
.venv) oberstet@amd-ryzen5:~/scm/oberstet/py-lmdb$ ll dist/
total 993
drwxrwxr-x  2 oberstet oberstet      4 Jun 27 12:41 ./
drwxrwxr-x 14 oberstet oberstet     21 Jun 27 12:41 ../
-rw-rw-r--  1 oberstet oberstet 107309 Jun 27 12:41 lmdb-1.7.0.dev0-pp311-pypy311_pp73-linux_x86_64.whl
-rw-rw-r--  1 oberstet oberstet 882405 Jun 27 12:41 lmdb-1.7.0.dev0.tar.gz
```

To list all contents of the *source distribution* tarball:

```
tar -tf dist/lmdb-1.7.0.dev0.tar.gz
```

To install the *wheel* into a new virtualenv using PyPy:

```
(.venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$ ~/pypy3.11-v7.3.19-linux64/bin/virtualenv venv
created virtual environment PyPy3.11.11.final.0-64 in 550ms
  creator PyPy3Posix(dest=/home/oberstet/scm/crossbario/autobahn-python/venv, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, via=copy, app_data_dir=/home/oberstet/.local/share/virtualenv)
    added seed packages: pip==25.1.1, setuptools==80.9.0
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
(.venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$ source venv/bin/activate
(venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$ pip3 show lmdb
WARNING: Package(s) not found: lmdb
(venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$ pip3 install ~/scm/oberstet/py-lmdb/dist/lmdb-1.7.0.dev0-pp311-pypy311_pp73-linux_x86_64.whl
Processing /home/oberstet/scm/oberstet/py-lmdb/dist/lmdb-1.7.0.dev0-pp311-pypy311_pp73-linux_x86_64.whl
Requirement already satisfied: cffi>=0.8 in /home/oberstet/pypy3.11-v7.3.19-linux64/lib/pypy3.11 (from lmdb==1.7.0.dev0) (1.18.0.dev0)
Collecting pycparser (from cffi>=0.8->lmdb==1.7.0.dev0)
  Using cached pycparser-2.22-py3-none-any.whl.metadata (943 bytes)
Using cached pycparser-2.22-py3-none-any.whl (117 kB)
Installing collected packages: pycparser, lmdb
Successfully installed lmdb-1.7.0.dev0 pycparser-2.22
(venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$ pip3 show lmdb
Name: lmdb
Version: 1.7.0.dev0
Summary: Universal Python binding for the LMDB 'Lightning' Database
Home-page: http://github.com/jnwatson/py-lmdb/
Author: David Wilson
Author-email:
License: OLDAP-2.8
Location: /home/oberstet/scm/crossbario/autobahn-python/venv/lib/pypy3.11/site-packages
Requires: cffi
Required-by:
(venv) oberstet@amd-ryzen5:~/scm/crossbario/autobahn-python$
```
