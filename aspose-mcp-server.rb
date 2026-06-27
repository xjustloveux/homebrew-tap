class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.84/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "010c63a120b2cdb0b078d3c78dd925e7756b011b02128f4d1e6bac2343eea2f9"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.84/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "631eb156544f1ebac1da3457b70961b38066acaff5c8a7c96fbf229410076b45"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
