# QA-with-Tensorflow

This repo hosts the code associated with my O'Reilly article, "Question answering with TensorFlow: Using advanced neural networks to tackle challenging natural language tasks," published on DATE.

This article serves as an introduction to question answering, an advanced natural language processing machine learning task, and guides you through creating a model that will accomplish this task.  In natural language processing, the task of textual entailment attempts to answer the question of whether, given one text that is accepted as truth, another text is true, false, or indeterminable.  The article, with the help of the code contained within this notebook, uses textual entailment as a practical example of the uses of word vectorization, recurrence in neural networks, LSTMs, and dropout as a regularization method.

## Requirements and installation
In order to run this notebook, you'll need to install [TensorFlow v1.2 or above](https://www.tensorflow.org/), [Jupyter](http://jupyter.org/), [NumPy](http://www.numpy.org/), and [Matplotlib](http://matplotlib.org/).

The notebook also uses [TQDM](https://pypi.python.org/pypi/tqdm) to display friendly progress bars during training.

**Note:** The first time you run this notebook, it will download the SNLI and GloVe datasets from Stanford University. Together these total just under 1 gigabyte of data and may take several minutes to download, depending on the speed of your connection. After the first run, the notebook will use local copies of the datasets cached on your machine.

There are two easy ways to install these libraries and their dependencies:

### Option A: use the provided Dockerfile configured for this notebook

1. Download and unzip [this entire repo from GitHub](https://github.com/Steven-Hewitt/Entailment-with-Tensorflow), either interactively, or by entering
    ```bash
    git clone https://github.com/Steven-Hewitt/Entailment-with-Tensorflow.git
    ```

2. Open your terminal and use `cd` to navigate into the top directory of the repo on your machine

3. To build the Dockerfile, enter
    ```bash
    docker build -t entailment_dockerfile -f dockerfile .
    ```
    If you get a permissions error on running this command, you may need to run it with `sudo`:
    ```bash
    sudo docker build -t entailment_dockerfile -f dockerfile .
    ```

4. Run Docker from the Dockerfile you've just built
    ```bash
    docker run -it -p 8888:8888 -p 6006:6006 entailment_dockerfile bash
    ```
    or
    ```bash
    sudo docker run -it -p 8888:8888 -p 6006:6006 entailment_dockerfile bash
    ```
    if you run into permission problems.

5. Launch Jupyter by entering
    ```bash
    jupyter notebook
    ```
    and, using your browser, navigate to the URL shown in the terminal output (usually http://localhost:8888/)

### Option B: install Anaconda Python, TensorFlow, and TQDM manually
NumPy can be tricky to install manually, so we recommend using the managed Anaconda Python distribution, which includes NumPy, Matplotlib, and Jupyter in a single installation. The Docker-based method above is much easier, but if you have a compatible NVIDIA GPU, manual installation makes it possible to use GPU acceleration to speed up training.

1. Follow the [installation instructions for Anaconda Python](https://www.continuum.io/downloads). **We recommend using Python 3.6.**

2. Follow the platform-specific [TensorFlow installation instructions](https://www.tensorflow.org/install/). Be sure to follow the "Installing with Anaconda" process, and create a Conda environment named `tensorflow`.

3. If you aren't still inside your Conda TensorFlow environment, enter it by typing
    ```bash
    source activate tensorflow
    ```

4. Install TQDM by entering
    ```bash
    pip install tqdm
    ```

5. Download and unzip [this entire repo from GitHub](https://github.com/Steven-Hewitt/Entailment-with-Tensorflow), either interactively, or by entering
    ```bash
    git clone https://github.com/Steven-Hewitt/Entailment-with-Tensorflow.git
    ```

6. Use `cd` to navigate into the top directory of the repo on your machine

7. Launch Jupyter by entering
    ```bash
    jupyter notebook
    ```
    and, using your browser, navigate to the URL shown in the terminal output (usually http://localhost:8888/)
