FROM ocaml/opam:debian
RUN opam depext merlin ocp-indent tuareg
RUN opam install merlin ocp-indent tuareg
RUN sudo apt-get install emacs-nox -y
COPY .emacs /home/opam/.emacs
COPY pkg-install.el /home/opam/pkg-install.el
RUN emacs --batch -l /home/opam/pkg-install.el
