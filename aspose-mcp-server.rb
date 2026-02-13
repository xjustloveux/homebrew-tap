class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.70/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "0194b5e3ba1d4fe93424749a314b5a7a501a318ae7ab3401695297e5d7a946a8"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.70/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "422434a6a0b6e2c82b15d10da0c051c2ab19fdaf4860b206039608c80745367d"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
