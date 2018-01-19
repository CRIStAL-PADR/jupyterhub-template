cp jupyterhub /etc/init.d/jupyterhub
chmod +x /etc/init.d/jupyterhub

# Start jupyterhub on boot
update-rc.d jupyterhub defaults