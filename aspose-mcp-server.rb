class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.62/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "58119ec6894ed144ff9b74da02389f9499c1f8c88e7f2bca250db337573d905d"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.62/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "d9fe6042f7f2c853f0b51c22fca6efad29df0a1cb555ae90fa5d1a329a107203"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
