class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.80/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "a9011e31e7dafe9398a1057b3a52d674592d792938264a0f2a78f3fb24ed5c8b"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.80/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "2fc45450e6cc0be437140337ab043a468cd51a72acf55ce096c681440d30f4d3"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
