#!/bin/sh
set -e

"${mysql[@]}" <<-EOSQL
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('admin_email','$MAILTRAIN_USER_EMAIL') ON DUPLICATE KEY UPDATE \`value\`='$MAILTRAIN_USER_EMAIL';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('default_address','$MAILTRAIN_DEFAULT_EMAIL') ON DUPLICATE KEY UPDATE \`value\`='$MAILTRAIN_DEFAULT_EMAIL';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_hostname','localhost') ON DUPLICATE KEY UPDATE \`value\`='localhost';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_disable_auth','') ON DUPLICATE KEY UPDATE \`value\`='';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_user','$SMTP_USER') ON DUPLICATE KEY UPDATE \`value\`='$SMTP_USER';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_pass','$SMTP_PASS') ON DUPLICATE KEY UPDATE \`value\`='$SMTP_PASS';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_encryption','$SMTP_ENCRYPTION') ON DUPLICATE KEY UPDATE \`value\`='$SMTP_ENCRYPTION';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('smtp_port','$SMTP_PORT') ON DUPLICATE KEY UPDATE \`value\`='$SMTP_PORT';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('default_homepage','http://localhost/') ON DUPLICATE KEY UPDATE \`value\`='http://localhost/';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('service_url','http://localhost/') ON DUPLICATE KEY UPDATE \`value\`='http://localhost/';
INSERT INTO \`settings\` (\`key\`, \`value\`) VALUES ('dkim_api_key','$DKIM_API_KEY') ON DUPLICATE KEY UPDATE \`value\`='$DKIM_API_KEY';
EOSQL
