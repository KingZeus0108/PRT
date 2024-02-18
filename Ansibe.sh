---
- name: Install Apache2 and Nginx
  hosts: all
  become: yes
  tasks:
    - name: Install Apache2
      apt:
        name: apache2
        state: present
      when: ansible_host == '3.225.141.43'

    - name: Install Nginx
      apt:
        name: nginx
        state: present
      when: ansible_host == '174.129.100.170'
