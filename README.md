# 📓 GuestBook DApp

A decentralized Guestbook application running on the Blockchain. Users can connect their crypto wallets, sign their names, and leave messages that are permanently stored on-chain.

## ✨ Features

- **Connect Wallet:** Seamless integration with MetaMask via Ethers.js.
- **Write Message:** Users can record their name (or AKA) and a message.
- **Read Messages:** Displays all guestbook entries in reverse chronological order (newest first).
- **Spam Protection:** Smart contract enforces a **30-second cooldown** period between messages for each address to prevent spamming.
- **Real-time UI:** Built with **Alpine.js** for a reactive and smooth user experience without complex build tools.
- **Thai Font Support:** Uses "Playpen Sans Thai" for a friendly, handwritten aesthetic.

## 🛠 Tech Stack

### Frontend
- **HTML5 / CSS3:** Responsive design with card layout.
- **Alpine.js:** Lightweight JavaScript framework for state management.
- **Ethers.js (v6):** Library for interacting with the Ethereum Blockchain.

### Backend (Smart Contract)
- **Solidity (v0.8.27):** Smart contract language.
- **Structures:** Uses `struct Guest` to store writer address, name, message, and timestamp.
- **Events:** Emits `New_Msg` event upon successful entry.

## 📂 Project Structure

```text
GuestBook_DApp/
├── Guestbook.sol   # Solidity Smart Contract
├── Index.html      # Frontend Interface (Single File)
└── README.md       # Project Documentation
