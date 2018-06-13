# configure cluster

resource "aws_ecs_cluster" "nextcloud" {
  name = "${var.name}"
}

# configure service

resource "aws_ecs_service" "nextcloud" {
  name            = "${var.name}"
  cluster         = "${aws_ecs_cluster.nextcloud.id}"
  task_definition = "${aws_ecs_task_definition.nextcloud.arn}"
  desired_count   = 1
}

# create a task definiton

resource "aws_ecs_task_definition" "nextcloud" {
  family                = "${var.name}"
  container_definitions = "${file("task-definitions/nextcloud.json")}"

  volume {
    name      = "${var.name}-storage"
    host_path = "/var/www/html"
  }
}
