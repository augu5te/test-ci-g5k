{ pkgs, ... }: {
  nodes = {
    foo = { pkgs, ... }:
      {
        # add needed package
        environment.systemPackages = with pkgs; [ bat ];
      };
  };
  testScript = ''
    foo.succeed("true")
  '';
}
