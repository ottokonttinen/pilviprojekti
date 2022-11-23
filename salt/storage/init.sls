samba:
  pkg.installed

/etc/samba/smb.conf:
  file.managed:
    - source:  salt://storage/smb.conf
smbd:
  service.running:
    - watch:
      - file: /etc/samba/smb.conf

/home/user/sambashare:
  file.directory:
    - user: root
    - group: root
    - makedirs: True
    - dir_mode: 774
    - file_mode: 644
    - recurse:
      - user
      - group
      - mode
