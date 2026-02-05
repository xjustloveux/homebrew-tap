class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.64/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "6c9b639b982041d9e9616e527e48a5667fea24843b55d1036913c7f760121577"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.64/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "4727ca0462854f14a409cfe9b933ab82970dc66cbfa3ef6e60f3daf8fba6aa82"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
