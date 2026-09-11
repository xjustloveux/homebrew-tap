class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.89/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "3fba7781c5f092679242bd53e5b2dfc060cab58e0fbe989a406cbb69d646e69f"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.89/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "a03917d204171d6c2dfa8e419a2faddc431409fa97ceb73a730ed169bfc10773"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
