resource "local_file" "languages" {
  filename = "languages.txt"
  content = "We love programming!"
  file_permission = "0700"
}
