# DevOps-Mentorship
aws bd
aws rds create-db-instance \
  --db-instance-identifier your-db-instance-identifier \
  --db-instance-class db-instance-class \
  --engine engine \
  --master-username master-username \
  --master-user-password master-user-password \
  --allocated-storage allocated-storage \
  --vpc-security-group-ids vpc-security-group-ids \
  --availability-zone availability-zone
aws rds describe-db-instances --db-instance-identifier your-db-instance-identifier
