class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.71/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "c50b6f54f2995c383d0b14e6d1882e761aaa928a09d5e6983586482d00a81225"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.71/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "10126a0622fea53b5ea494b8850ffded1777779a0f0ee6b21d06eafac11ab980"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
