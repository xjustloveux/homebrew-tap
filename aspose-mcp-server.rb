class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.77/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "3516df04e150f292f24b1a1d70a41725785f13ec252c5f27165d6e82a51ba9a0"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.77/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "30009287cb5bd5c118a4305d0b63dc22dad08206ef2b97991e512a99172e85f5"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
