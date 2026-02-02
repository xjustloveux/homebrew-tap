class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.61/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "eb3b2f1396aa49eacb0e1e09ee09034abf4a3209ef7d1cd6f69e3e5ea2445b9b"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.61/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "cc05850146cfc1fcea34f0d33af6206b595c0f1b99604a5d3f34b2adc6c1e9da"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
