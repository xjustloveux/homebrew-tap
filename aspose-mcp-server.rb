class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.82/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "47b434c9de42ddfb0fb3f47d08da277d87d811c07c6a65bab921a2f0e4b25931"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.82/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "fa9a088de5d5c1c32a1c1cdd35cf9ff00a6d54bd4485f2bdbbb863a0b9e40f37"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
