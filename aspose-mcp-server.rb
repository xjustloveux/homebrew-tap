class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.60/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "PLACEHOLDER"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.60/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
