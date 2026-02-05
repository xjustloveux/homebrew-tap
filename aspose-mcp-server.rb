class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.63/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "fa02d92927780e510df8bfdab5b253f85e51c06ddcd0fc3a61c8ac209a90574d"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.63/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "85cd63636256261da5af07da565b07160d11bff556247177f79a56f3c61096e5"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
