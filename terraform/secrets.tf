resource "aws_secretsmanager_secret" "clevertap" {
   name = "Masteraccoundb"
}

resource "aws_secretsmanager_secret_version" "clevertapversion" {
  secret_id = aws_secretsmanager_secret.clevertap.id
  secret_string = <<EOF
   {
    "username": "admin",
    "password": "admin123"
   }
EOF
}