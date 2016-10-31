{% from "smokeping/map.jinja" import smokeping with context %}

sendmail:
  pkg.installed:
    - name: {{ smokeping.lookup.sendmail_pkg }}

smokeping:
  pkg.installed:
    - name: {{ smokeping.lookup.pkg }}

  service.running:
    - name: smokeping
    - enable: True
    - require:
      - pkg: smokeping
