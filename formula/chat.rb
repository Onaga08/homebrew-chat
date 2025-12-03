class Chat < Formula
  include Language::Python::Virtualenv

  desc "CLI and WebSocket-based chat application using FastAPI and prompt_toolkit"
  homepage "https://github.com/Onaga08/CLI-Chat"
  url "https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "425af61e229dea8241c6edfae0260d99ca26a1b6943c4d1b09d86a080feff224"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/chat --help")
    assert_match "usage", output
  end
end
