from dreg.cloud.sdu.dk/ucloud-apps/jupyter-base:3.1.4
RUN conda create --name colabfold -y
RUN conda init bash
RUN echo "conda activate colabfold" >> ~/.bashrc
SHELL ["conda", "run", "-n", "colabfold", "/bin/bash", "-c"]
RUN conda info
RUN conda install -y  -c conda-forge -c bioconda jax=0.3.23 kalign2=2.04 hhsuite=3.3.0 python=3.7 openmm=7.5.1 python=3.7 pdbfixer appdirs=1.4.4 ipykernel tqdm=4.64.1 importlib_metadata=4.11.4 pandas=1.2.3
RUN pip install  --no-warn-conflicts "colabfold[alphafold-minus-jax] @ git+https://github.com/sokrypton/ColabFold"
RUN conda install -y -c nvidia cuda-nvcc=11.7
USER root
RUN ln -s /opt/conda/envs/colabfold/bin/ptxas /usr/bin/
USER ucloud
RUN mkdir -p /home/ucloud/.local/share/jupyter/kernels/colabfold
RUN cp /opt/conda/share/jupyter/kernels/python3/kernel.json /home/ucloud/.local/share/jupyter/kernels/colabfold
RUN sed -i 's|/opt/conda/bin/python|/opt/conda/envs/colabfold/bin/python|g' /home/ucloud/.local/share/jupyter/kernels/colabfold/kernel.json
RUN sed -i 's|Python 3 (ipykernel)|colabfold|g' /home/ucloud/.local/share/jupyter/kernels/colabfold/kernel.json
RUN cd /work && wget https://raw.githubusercontent.com/hds-sandbox/AlphaFold_Workshop/main/AlphaFold2.ipynb?token=GHSAT0AAAAAABZMJ7J2WNGWSTGXAEBGI2W6Y24YWKA && mv AlphaFold2* AlphaFold2.ipynb
