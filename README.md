# Run Jupyter Notebooks as Jobs

Jupyter notebooks offer a simple, encapsulated runtime for most data science languages,
including Python and R. This is also called a "REPL":

> A **REPL** in Python stands for Read-Evaluate-Print Loop, an interactive shell environment that allows you to execute Python code snippets one line at a time and get immediate feedback. It is a powerful tool for learning, testing, and debugging code interactively.

This repository includes a Docker-enabled notebook that pulls and plots recent earthquake
data from the USGS. But the larger aim of the notebook and repository is to teach ways to
author Jupyter notebooks to be run as jobs. This includes:

- Outputs in the form of data files or plots. These can be saved locally or offloaded to remote storage.
- Inputs in the form of parameters at runtime.
- Running notebooks as jobs with Papermill. This can take advantage of input parameters in order to generate outputs.

## Setup

1. Create a Python virtual environment.
2. Install dependencies (Papermill will use these).
3. Launch the Docker stack to work with Jupyter:
    ```
    docker compose up --build
    ```
4. See the output log to find the local URL for Jupyter (http://127.0.0.1/...)
5. Edit and test your notebook. Save it.
6. To run the notebook as a job, simply run `papermill.sh` from the terminal.
