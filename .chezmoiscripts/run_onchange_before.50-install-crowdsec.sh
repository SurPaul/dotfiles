{{ if eq .chezmoi.osRelease.id "debian" "ubuntu" -}}
#!/bin/bash

{{ $sudo := "sudo " -}}
{{ if eq .chezmoi.username "root" -}}
{{   $sudo = "" -}}
{{ end -}}

{{ $collections := list
    crowdsecurity/appsec-virtual-patching
    crowdsecurity/appsec-generic-rules
    crowdsecurity/caddy -}}

{{ if lookPath "cscli" -}}
curl -s https://install.crowdsec.net | {{ $sudo }}sh
{{ $sudo }}apt install crowdsec crowdsec-firewall-bouncer-nftables

{{ $sudo }}cscli collections install {{ $collections | join " " }}

read -p "Set up Crowdsec now? [y/N]: " answer
answer=${answer:-N}
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [[ "$answer" == "y" || "$answer" == "yes" ]]; then
    read -p "Go to https://app.crowdsec.net/security-engines and copy enroll command: " enroll_command
    $enroll_command
fi

{{ $sudo }}systemctl reload crowdsec

echo "Secure Caddy with CrowdSec: https://www.crowdsec.net/blog/secure-caddy-crowdsec-remediation-waf-guide"

{{ end -}}
{{ end -}}
