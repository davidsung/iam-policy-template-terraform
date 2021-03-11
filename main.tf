locals {
  policy_name_prefix = "trust_policy"
  roles = [
    "arn:aws:iam::111122223333:role/Test*",
    "arn:aws:iam::222233334444:role/ci"
  ]
}

resource "aws_iam_policy" "trust_policy" {
  name_prefix = local.policy_name_prefix
  policy = templatefile("${path.module}/templates/assume_role.json.tpl", {
    roles = jsonencode(local.roles)
  })
}