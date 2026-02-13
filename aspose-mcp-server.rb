class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.69/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "f537d0bda2d62b7e33ef72111d5725919b61262ba6b5b796c2b5e6926354fb61"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.69/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "621295bcd0c4d057b50d0d1e4d2832b370fc376280f94203b7bc118f2d20e440"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
