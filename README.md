# minigrep

> A GREP equivalent command-line tool

### Run
With `cargo` and `rust` installed locally

**Example 1:**
Perform a normal search of the word *needle* in the text file **poem**
```bash
cargo run needle poem.txt   
```

**Example 2:**
To perform a **case-insensitive** search where you look for the word *to* in the text file *poem.txt*
```
 CASE_INSENSITIVE=1 cargo run to poem.txt
```

**Note**
The current directory is sought for in case the file path is not passed
## Use
```bash
cargo run needle file/path/file.txt   
```
## Tests

```bash
cargo test
```