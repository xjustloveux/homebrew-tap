class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.75/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "0d01b1c3971dd9cc52d74309dc4556c2c345a07783ea35abb35f4204ca1bf8b3"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.75/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "be6dbcdd9ca4ac31151364d94647cb2a333399ef88dc0b8ae192fe038a5a2367"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
