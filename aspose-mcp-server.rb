class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.79/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "011ba9d3ff374e91fdcbb958f0b09d84f9af02b04d0552cacc5a572c01eacecf"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.79/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "5aaab827b482212808b540d74bae37893a120f486f0dbf28e3e3360b87d5cb79"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
