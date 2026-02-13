class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.67/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "7e502c968c21f5113b523cb9d60eb2b3eeaed4094c0b7463e57cdd6c8ec7c245"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.67/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "6f9eafeb64fb4a94df43cc7c4eb5a85a33ceca6cc99acb25df7f088cb4b5774d"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
