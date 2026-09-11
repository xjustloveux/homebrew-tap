class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.88/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "0a106bda83949382ee0384ee8a2651a679c89b20ab73eeadada350ec4084d99d"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.88/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "c14c56cb31b1533781d2ef698984abdab7902ba8ebdf4cc0496b6124a489677c"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
