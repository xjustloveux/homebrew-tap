class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.90/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "52c220f1701710bd734b6c783ff986de1c75e362e7fd4d190bdab4b4b5503c51"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.90/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "626f10db3b591e4dc8c7c68c2bfdb46f72aafa14f129419fe45d10668feb30ec"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
