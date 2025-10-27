class Chat < Formula
  include Language::Python::Virtualenv

  desc "Real-time CLI chat client using WebSockets"
  homepage "https://github.com/<yourusername>/chat_server"
  url "https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.0.tar.gz"
  # https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.0.tar.gz
  sha256 "2447440dfc9ae892ccd5e2748d926d1656d64ea61b85af80e412b0e1ab62433e"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
    bin.install "chat.py" => "chat"
  end
end
