class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.91/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "12343f06e2c944baafb7955be863d3be4bb73d4acdb0d003882ca4749d937364"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.91/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "f9859883de7430fa0d73f5e00201cf2cb65a1cb67cffd98c21f8559e5c3501d9"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
