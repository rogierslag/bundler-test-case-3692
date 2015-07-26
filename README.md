# Bundler testcase for #3692

Since the authors needed a way to reproduce the problem which seemed to occur with multiple parallel jobs, this is a very limited set of an [inventid](https://github.com/inventid) system.

To run, simply clone the repository, and run the following command (which will build a Docker container).
The container itself is not interesting whatsoever, you'll get an error before the build is finished.

```bash
docker run --rm -t -i -v <ROOT_DIR_OF_THIS_REPO_CLONE>:/test ubuntu:14.04.2 /bin/bash /test/puppet/update_test_container.sh
```

