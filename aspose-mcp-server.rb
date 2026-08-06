class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.87/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "acd8c489e6a2f416163ffffd000a8385495aedf8b752ac68cdbe73140ee20983"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.87/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "8d20c70a27c6bc1a635db42244bb381aa4be07176ebb92c9ec1002e3a97394e8"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
