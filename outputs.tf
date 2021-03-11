# Output values
output "iam_policy" {
  value = aws_iam_policy.trust_policy.policy
}
