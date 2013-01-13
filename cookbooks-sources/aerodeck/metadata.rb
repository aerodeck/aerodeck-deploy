maintainer       "Conrad Kramer"
maintainer_email "conrad@kramerapps.com"
license          "MIT"
description      "Installs and configures the Aerodeck platform"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends          "mongodb"
depends          "nginx"
depends          "nodejs"
depends          "npm"
depends          "application"
depends          "application_nginx"
