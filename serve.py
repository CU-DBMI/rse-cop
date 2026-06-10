import os, sys
os.chdir("/Users/buntend/Documents/work/rse-cop/_site")
port = int(os.environ.get("PORT", sys.argv[1] if len(sys.argv) > 1 else "8000"))
import http.server
handler = http.server.SimpleHTTPRequestHandler
with http.server.HTTPServer(("0.0.0.0", port), handler) as httpd:
    httpd.serve_forever()
