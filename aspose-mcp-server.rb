class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.85/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "5da29d7de38dfcf450a05c4ab9c00fdc8882fd294f4028f88f36f20d7911e2be"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.85/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "6f2646c5a96bf1f4ab0b4077e3dd559515f7755e43def1dd296723549588cc09"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
