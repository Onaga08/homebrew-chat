class Chat < Formula
  include Language::Python::Virtualenv

  desc "Real-time CLI chat client using WebSockets"
  homepage "https://github.com/Onaga08/CLI-Chat"
  url "https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "<sha256>"
  license "MIT"

  depends_on "python@3.11"

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/.../websockets-11.0.3.tar.gz"
    sha256 "<sha256_of_wheel_or_tar.gz>"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/.../prompt_toolkit-3.0.40.tar.gz"
    sha256 "<sha256>"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/.../rich-13.3.2.tar.gz"
    sha256 "<sha256>"
  end

  def install
    virtualenv_install_with_resources
    bin.install "chat.py" => "chat"
  end
end
