# Lambda layer builder

Uses the [`amazonlinux`](https://hub.docker.com/_/amazonlinux) docker image to build *layers* with python dependancies for AWS Lambda functions.
This allows the code for Lambda functions to be uploaded and managed independently of the dependancies (that would otherwise require building deployment packages).

## Usage

To build a layer run [`execute_build.sh`](./execute_build.sh) with the list of libraries as a space-separated string wrapped in quotes (ex. `./execute_build.sh "numpy pandas"`)
