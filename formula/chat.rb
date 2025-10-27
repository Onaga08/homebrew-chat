class Chat < Formula
  include Language::Python::Virtualenv

  desc "Real-time CLI chat client using WebSockets"
  homepage "https://github.com/<yourusername>/chat_server"
  url "https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.0.tar.gz"
  # https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.0.tar.gz
  sha256 "99c1f46574acddb2fabbb5b0cbf615e118ef8d3bc95d9989a4a7926e38d76e7d"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
    bin.install "chat.py" => "chat"
  end
end
