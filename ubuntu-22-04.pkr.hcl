packer {
   required_plugins {
    virtualbox = {
      version = ">= 1.0.5"
      source = "github.com/hashicorp/virtualbox"
    }
    vagrant = {
      version = ">= 1.1.2"
      source = "github.com/hashicorp/vagrant"
    }
  }
} 

source "virtualbox-iso" "ubuntu-server" {
  guest_os_type = "Ubuntu22_LTS_64"

  iso_url = "http://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso"
  iso_checksum = "SHA256:5e38b55d57d94ff029719342357325ed3bda38fa80054f9330dc789cd2d43931"

  memory = 2048
 
  http_directory = "http"

  boot_command = [
    "<esc>",
    "e",
    "<down><down><down><end>",
    "<bs><bs><bs><bs>",
    "autoinstall ds=nocloud-net\\;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ ---<wait5>",
    "<f10>"
  ]

  vboxmanage   = [["modifyvm", "{{.Name}}", "--nat-localhostreachable1", "on"]]

  ssh_timeout = "1h30m"
  ssh_username = "codeworker"
  ssh_password = "Test123"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
}

build {
    sources = ["sources.virtualbox-iso.ubuntu-server"] 

    post-processors {

     post-processor "vagrant" {
        keep_input_artifact = true
        output = "ubuntu-server-22-04.box"
        provider_override = "virtualbox"
     } 

    } 
} 