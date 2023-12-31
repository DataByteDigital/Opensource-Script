# Part 1

# ----------------------------- Terraform Installation ----------------------------------------

# Ensure that your system is up to date and you have installed the gnupg, software-properties-common, and curl packages installed.

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

# Install the HashiCorp GPG key.

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Verify the key's fingerprint.

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

# The gpg command will report the key fingerprint:

# Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

# Download the package information from HashiCorp.

sudo apt update

# Install Terraform from the new repository.

sudo apt-get install terraform -y


# ----------------------------- Terraform Installation ----------------------------------------
