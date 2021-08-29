FROM mltooling/ml-workspace-gpu:0.13.2

#set timezone
RUN TZ=Asia/Seoul && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&  echo $TZ | tee -a /etc/timezone

# Font install
RUN git clone https://github.com/powerline/fonts.git --depth=1 && \
    # install
    cd fonts && \
    mkdir MesloLGS_NF && cd MesloLGS_NF && \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf && \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf && \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf && \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf && \
    cd .. && \
    ./install.sh && \
    # clean-up a bit
    cd .. && \
    rm -rf fonts

#
# get install script from https://github.com/GoogleCloudPlatform/cloud-sdk-docker/blob/master/Dockerfile
#
ARG CLOUD_SDK_VERSION=354.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION
# ENV PATH "$PATH:/opt/google-cloud-sdk/bin/"
RUN  apt-get -qqy update && apt-get install -qqy \
        curl \
        python3-dev \
        python3-crcmod \
        apt-transport-https \
        lsb-release \
        openssh-client \
        git \
        make \
        gnupg && \
    # export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y google-cloud-sdk=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-app-engine-python=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-app-engine-python-extras=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-app-engine-java=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-app-engine-go=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-datalab=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-datastore-emulator=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-pubsub-emulator=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-bigtable-emulator=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-firestore-emulator=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-spanner-emulator=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-cbt=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-kpt=${CLOUD_SDK_VERSION}-0 \
        google-cloud-sdk-local-extract=${CLOUD_SDK_VERSION}-0 \
        kubectl && \
    gcloud --version && \
    docker --version && kubectl version --client

RUN git config --system credential.'https://source.developers.google.com'.helper gcloud.sh

RUN pip install --upgrade cython && \
    pip install --upgrade cysignals && \
    pip install pyfasttext && \
    pip install google-cloud-automl && \
    pip install google-cloud-bigquery[bqstorage,pandas,tqdm,opentelemetry,bignumeric_type] && \
    pip install google-cloud-storage && \
    pip install google-cloud-translate && \
    pip install google-cloud-language && \
    pip install google-cloud-videointelligence && \
    pip install google-cloud-vision && \
    pip install google-cloud-aiplatform && \
    clean-layer.sh

RUN pip install jupyter_contrib_nbextensions && \
    pip install jlab-enhanced-cell-toolbar && \
    pip install ipysheet && \
    pip install lux-api  && \
    pip install remote_ikernel  && \
    pip install ssh_ipykernel  && \
    pip install witwidget-gpu && \
    pip install ai-benchmark & \
    clean-layer.sh

 RUN \
    jupyter labextension install --py luxwidget && \
    jupyter nbextension enable --py luxwidget && \
    jupyter labextension install ipysheet && \
    jupyter nbextension enable --py --sys-prefix ipysheet && \
    jupyter labextension install wit-widget && \
    # jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    clean-layer.sh