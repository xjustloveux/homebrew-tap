class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.86/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "c4046d2241ca22af89826775d03ae2d761aff21b9fdb0395f72dd9a522e63074"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.86/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "18bcc2d05987882b1c749095c6660b3522f3d102ad4412478287891c30503b20"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
