class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.81/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "47de086c3f967a112a5675e8f18ffb9e516b02c79a5ca75e228a0631dd6d6e4c"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.81/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "317791fcc8556012df264f4046adf48670f4266c2d6daecb11ed2c5240d679f6"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
