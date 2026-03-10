class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.74/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "93da4e2cca12020d9bdc86e7260c9653f747ce7fde2f25ea048c4bbed47a0755"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.74/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "5353de35d25b657278d559aaa5344174d5ff5aa2ea70421e48ed72fb4dca78c1"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
