class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.68/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "a7d9a849e34e313631114eaa2b6590bf0851f9aeec5544eabcdfbb92bd1619e9"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.68/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "4d5d342316c632672c3a3b450adcb90b30ad7dad017c53bec64636d467e770f4"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
