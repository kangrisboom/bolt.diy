curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok
  && ngrok config add-authtoken 2tA1ZmFvVMXhd0UXoRCZBdomNbe_6av3o94w32peSiCy6jJjr
  && ngrok http 5173

