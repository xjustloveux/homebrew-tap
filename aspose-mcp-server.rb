class AsposeMcpServer < Formula
  desc "MCP server for office document processing powered by Aspose.Total"
  homepage "https://github.com/xjustloveux/aspose-mcp-server"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.72/aspose-mcp-server-macos-arm64.tar.gz"
    sha256 "4f70be495af81f52b95932db6c7be225a99426acb5e7e3022a1c6a4291646a77"
  else
    url "https://github.com/xjustloveux/aspose-mcp-server/releases/download/v1.0.72/aspose-mcp-server-macos-x64.tar.gz"
    sha256 "f1eeaddce74f2888d142ec2dfac3760b87e81db835f631f782858e8316217447"
  end

  def install
    bin.install "AsposeMcpServer"
  end

  test do
    assert_predicate bin/"AsposeMcpServer", :executable?
  end
end
