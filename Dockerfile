

FROM jupyter/tensorflow-notebook


RUN pip install --upgrade pip
RUN pip install --upgrade tensorflow
RUN pip install --upgrade datetime
RUN pip install --upgrade xlrd
RUN pip install --upgrade pandas
RUN conda update conda
RUN conda install graphviz
RUN conda update graphviz
RUN conda install pydotplus
RUN conda update pydotplus
