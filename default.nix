final: previous:

with final.pythonPackages;

{
  python = previous.python.override {
    packageOverrides = self: super: {
      junitxml = buildPythonPackage rec {
        pname = "junitxml";
        version = "0.7";

        src = fetchPypi {
          inherit pname version;
          sha256 = "18xa3c5xhpjgmxynjp2rynrnk70jihv2f1zk3p8z7dvs0qki3455";
        };
      };
    };
  };

  pythonPackages = final.recurseIntoAttrs (final.python.pkgs);
}
