$template = ".\template.json"
$HostIp = (Get-NetIPAddress -PrefixOrigin Dhcp -SuffixOrigin Dhcp | ? { $_.InterfaceAlias -notlike '*VMware*' }).IpAddress
Write-Host "HostIp: $HostIp"
packer build -var "HostIP=$HostIp" $template

vagrant box add --name nixos ./nixos-19.03-x86_64-vmware.box --force