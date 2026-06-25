class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.83/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "9c593a6545e191df83b48fddbef52258361bd2ff94db15b88beb2edf2ef3bb90"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.83/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "891bec2e6b4b89458bf3331034ca6c0450080c0bb4937f209038011dc1f01d89"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
