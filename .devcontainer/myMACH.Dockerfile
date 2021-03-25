########################################
# Inherit from a previous Docker image
########################################
FROM mdolab/public:tacc-u18-gcc-impi-stable


########################################
# Repo directory should be available from upstream image
########################################
WORKDIR $MDOLAB_REPO_DIR

########################################
# Add a particular version of pygeo
########################################

RUN . $BASHRC_MDOLAB && cd pygeo && git remote add joshfork https://github.com/joanibal/pygeo.git && git fetch joshfork && git checkout --track joshfork/spanwise_local  && pip install .


