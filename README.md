![hey](http://i.imgur.com/szzD9q0.png)

`hey` is a tiny program that provides a simple CLI interface to perform HTTP load testing on your services. It's originally created by [rakyll](https://github.com/rakyll), this repository is a fork intended to add a few additional features, which may slightly alter the original behavior, so if you prefer to use the original version (last compiled a long time ago), please refer to the original repository.

Installation
------------

`hey` comes with a single binary that you can download and run. It is available for Linux, macOS, and Windows. You can download the latest version from the [releases page](https://github.com/huseyin/hey/releases).

Yet you can also install it using `go get` if you have Go installed on your machine:

```bash
go get -u github.com/huseyin/hey
```

Or you can build it from source:

```bash
git clone https://github.com/huseyin/hey
cd hey
make
```

This will create a binary called `hey` in `bin/` directory. You can move it to one of your `$PATH` or run it directly from `bin/`.

Usage
-----

- Simply run `hey` with the URL you want to test:

  ```bash
  hey https://example.com
  ```

- To specify the number of requests, use `-n` flag:

  ```bash
  hey -n 1000 https://example.com
  ```

- To specify the concurrency level, use `-c` flag:

  ```bash
  hey -c 100 https://example.com
  ```

- To specify the HTTP method, use `-m` flag (all methods are supported):

  ```bash
  hey -m GET https://example.com
  ```

- To specify the request body, use `-d` flag:

  ```bash
  hey -d '{"foo": "bar"}' https://example.com
  ```

- To specify the request, use `-H` flag:

  ```bash
  hey -H 'Content-Type: application/json' -H 'Authorization: Bearer token' https://example.com
  ```

  As shown in the example, you can pass multiple headers by repeating the flag multiple times.

- To specify the output format, use `-o` flag (available formats: `csv`):

  ```bash
  hey -o csv https://example.com
  ```

- To enable live output, use `-live` flag:

  ```bash
  hey -o csv -live https://example.com
  ```

  This flag is **NEW** and allows you to stream output in real time, displaying each response as it's received. Note that this is only supported when using the `csv` format.

For other options, please run `hey -h` to see the full list of available options.

License
-------

See [LICENSE](LICENSE) for details.

Contributing
------------

If you want to contribute to this project, please feel free to open an issue or a pull request. All contributions are welcome!
