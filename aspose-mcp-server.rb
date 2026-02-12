class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.65/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "68f6c050baf03744f3f9f7c27bc862abb6eca63e48dc0fe408505f7056ca31d0"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.65/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "0303a107e472ab386b1a2ec922af3acade8931d269553df1c838099412e1b0ff"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
