#!/bin/bash

echo "Installing AMP stack on Ubuntu Server 18.04 LTS"

echo ""
echo "Getting latest Aptitude packages"
{ # try
  sudo apt update
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get latest Aptitude packages!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}

echo "Installing Apache2"
{ # try
  sudo apt install apache2 -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install latest Apache2 packages!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}

echo "Opening uncomplicated firewall ports for Apache connections"
{ # try
  sudo ufw allow in "Apache Full"
  echo "Success"
  echo "Your server is now open for web connections."
} || { # catch
  echo -e "\e[31mUnable to open UFW ports!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}

echo "Installing MySQL Server"
{ # try
  sudo apt install mysql-server -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install latest MySQL Server packages!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}


echo "Installing PHP"
{ # try
  sudo apt install php -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install latest base PHP packages!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}

echo "Installing Apache extension for PHP"

{ # try
  sudo apt install libapache2-mod-php -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install the Apache mod for PHP!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}

echo "Installing PHP modules"
{ # try
  echo "Installing php-mysql"
  sudo apt install php-mysql -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-mysql!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-bcmath"
  sudo apt install php-bcmath -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-bcmath!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-bz2"
  sudo apt install php-bz2 -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-bz2!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-calendar"
  sudo apt install php-calendar -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-calendar!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-curl"
  sudo apt install php-curl -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-curl!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-date"
  sudo apt install php-date -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-date!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-dom"
  sudo apt install php-dom -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-dom!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-exif"
  sudo apt install php-exif -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-exif!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-ftp"
  sudo apt install php-ftp -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-ftp!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-gd"
  sudo apt install php-gd -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-gd!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-gettext"
  sudo apt install php-gettext -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-gettext!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-imagick"
  sudo apt install php-imagick -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-imagick!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-json"
  sudo apt install php-json -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-json!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-mbstring"
  sudo apt install php-mbstring -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-mbstring!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-readline"
  sudo apt install php-readline -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-readline!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-tokenizer"
  sudo apt install php-tokenizer -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-tokenizer!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-xml"
  sudo apt install php-xml -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-xml!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}
{ # try
  echo "Installing php-zip"
  sudo apt install php-zip -y
  echo "Success"
} || { # catch
  echo -e "\e[31mUnable to get and install php-zip!\e[0m"
  echo -e "\e[31mExiting now.\e[0m"
  exit 0
}


echo "Enabling PHP modules"
sudo phpenmod bcmath
sudo phpenmod bz2
sudo phpenmod calendar
sudo phpenmod ctype
sudo phpenmod curl
sudo phpenmod dom
sudo phpenmod exif
sudo phpenmod fileinfo
sudo phpenmod ftp
sudo phpenmod gd
sudo phpenmod gettext
sudo phpenmod iconv
sudo phpenmod imagick
sudo phpenmod json
sudo phpenmod mbstring
sudo phpenmod mysqli
sudo phpenmod mysqlnd
sudo phpenmod posix
sudo phpenmod readline
sudo phpenmod shmop
sudo phpenmod sockets
sudo phpenmod tokenizer
sudo phpenmod wddx
sudo phpenmod xml
sudo phpenmod xmlreader
sudo phpenmod xmlwriter
sudo phpenmod xsl
sudo phpenmod zip

echo "Restarting Apache to use new packages"
sudo systemctl restart apache2

echo -e "\e[31mBe sure to run 'sudo mysql_secure_installation' now!\e[0m"
echo "All done!"
