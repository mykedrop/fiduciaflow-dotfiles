#!/bin/bash

echo "🚀 Starting FiduciaFlow Dev Environment Setup..."

# Install Homebrew if missing
if ! command -v brew &> /dev/null; then
    echo "🔧 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew already installed."
fi

# Install core tools
echo "📦 Installing CLI tools (git, tree, node)..."
brew install git tree node

# Clone FiduciaFlow repo
echo "📁 Cloning FiduciaFlow repo..."
mkdir -p ~/Projects
cd ~/Projects
git clone https://github.com/mykedrop/fiduciaflow.git

# Move zshrc config
echo "⚙️ Setting up terminal aliases..."
cp zshrc ~/.zshrc
source ~/.zshrc

echo "✅ Setup Complete! Type 'ffdev' to launch FiduciaFlow in Cursor."
