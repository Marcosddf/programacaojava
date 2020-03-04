#!/bin/bash
# Comando de inicializacao do container
NB_USER="bccparadigmas"

jupyter notebook --ip 0.0.0.0

# Cria a configuração padrão do notebook
jupyter notebook --generate-config

# Cria o password padrão do notebook como "bccparadigmas"
echo "c.NotebookApp.password = u'sha1:8f475cf4b9e1:91a2e52435340899edfc8107a84e738d1f3a6ecc'" >> /home/$NB_USER/.jupyter/jupyter_notebook_config.py

# Lista os notebooks ativos
jupyter notebook list

