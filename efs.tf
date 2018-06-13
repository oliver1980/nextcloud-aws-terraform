resource "aws_efs_file_system" "nextcloud" {
  tags {
    Name = "${var.name}"
  }
}

resource "aws_efs_mount_target" "nextcloud-subnet-pa" {
  file_system_id = "${aws_efs_file_system.nextcloud.id}"
  subnet_id      = "${var.public-subnet-a}"
}

resource "aws_efs_mount_target" "nextcloud-subnet-pb" {
  file_system_id = "${aws_efs_file_system.nextcloud.id}"
  subnet_id      = "${var.public-subnet-b}"
}
