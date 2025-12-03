class Chat < Formula
  include Language::Python::Virtualenv

  desc "CLI and WebSocket-based chat application using FastAPI and prompt_toolkit"
  homepage "https://github.com/Onaga08/CLI-Chat"
  url "https://github.com/Onaga08/CLI-Chat/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "425af61e229dea8241c6edfae0260d99ca26a1b6943c4d1b09d86a080feff224"
  license "MIT"

  depends_on "python@3.11"

  # ---------- Python deps (sdists you downloaded) ----------

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/73/81/56020f2ac02c109352ca0cd1826fd081c808868ba0b3a22df50d92b834f8/websockets-12.0.tar.gz"
    sha256 "81df9cbcbb6c260de1e007e58c011bfebe2dafc8435107b0537f393dd38c8b1b"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/8b/53/5307855fa29dcfa676c38596f5ea6f2457b6fded318313a9c575e04c8d7c/prompt_toolkit-3.0.52.tar.gz"
    sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/87/3f/25b89064980600c9b714b6e9e14343d2c7c1959960c7752b72c0b7c5546a/wcwidth-0.2.14.tar.gz"
    sha256 "4d478375d31bc5395a3c55c40ccdf3354688364cd61c4f6adacaa9215d0b3605"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/9a/df/57dceb4165e02466e460f9ea0a4bbf1bee4db7ad0eed5e71e7b2a61a364d/rich-14.2.0.tar.gz"
    sha256 "73ff50c7c0c1c77c8243079283f4edb376f0f6442433aecb8ce7e6d0b92d1fe4"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/ae/89/8ff12bb48fb6ef1121b158da4742d9df68b00426bfd861cf47e2db5ab10f/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/ba/c8/686b26c5896c08507978e129540483f382f3693229e99ad2f26c19439f5b/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/02/cd/480ea3a15a6f455b6caec2c1fa5893f5e04a05d0fbb1b93a8014c124fe25/python_dotenv-1.2.1.tar.gz"
    sha256 "42667e897e16ab0d66954af0e60a9caa94f0fd4ecf3aaf6d2d260eec1aa36ad6"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/e2/3e/b5aeeb6a2c339d2ee686ff8e5282ea5fb4df21098c81429937732c07f911/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # basic sanity check
    output = shell_output("#{bin}/chat --help")
    assert_match "usage", output
  end
end
