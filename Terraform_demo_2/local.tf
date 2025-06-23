resource "local_file" "databases" {
    filename = "databases.txt"
    content = "We love databases!"
}

resource "local_file" "devops" {
    filename = "devops.txt"
    content = "We love devops!"
}
