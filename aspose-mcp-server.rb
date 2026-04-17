class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.76/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "a24b9f0e9b2af0bf51bfa8026daf549a2e83a3aaab24105e1927da92d4db06b9"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.76/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "38ffb68d6f38a3a7afca9c74a2857a8301add69d643df4fd00a3ccc4dde5c725"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
