class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.73/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "544d5edc36d1c5b4adbe94e8c729a2dbd64218b7e62bd9f9782798cc6847da89"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.73/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "12917621b945b253b61d9af37b2235a330727a1203f01272eb6eb9b926da7de6"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
