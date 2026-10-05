class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.92/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "ae49846147f27881ffe2fb5829bfde58ec3728e1ba07d222c73d15bd245f44bd"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.92/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "4055ed5a500964f65d77124fa074834f61f5a584be4ddcdb62c74ef829457947"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
