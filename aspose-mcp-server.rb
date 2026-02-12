class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.66/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "14d8588b8b918e14e7f702be71421aa7d89d6a655522142e694b26b5adca5b90"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.66/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "06b08574369bb7200642595cee9a922adf67895c8f20d1c5a99ecb826fa591bc"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
