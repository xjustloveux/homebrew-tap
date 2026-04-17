class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.78/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "f7f9a461f9379321878a763aecc631d737440456d0604d022e6f698b339880f4"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.78/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "d99d351b9b1d43fa36cde8cede0cdd80190c1cfa34ed599a8e844264319c57f8"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
