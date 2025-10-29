// Placeholder YARA rule — only useful for static binaries
rule placeholder_uploader {
  meta:
    author = "karyorrhex1s"
    description = "Placeholder rule for custom uploader binary"
  strings:
    $s1 = "POST /upload" nocase
  condition:
    $s1
}
