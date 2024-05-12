

"use strict";
import express from "express";
const app = express();
app.use(express.json());

let cards = [
  {
      "id": 1,
      "type": "atack",
      "name": "Red Flag"
  }, 
  {
      "id": 2,
      "type": "winner",
      "name": "Finish Line Fox Charles Leclerc"
  },
  {
      "id": 3,
      "type": "defense",
      "name": "King Penguin Kimi Räikkönen Pick your Next Tires"
  },
  {
      "id": 4,
      "type": "Crash",
      "name": "Lethal Lion Max Verstappen Crash"
  }
]

function ValCard (card){
  const expectedCard = {
    "id": "number",
    "type": "string",
    "name": "string"
  }
  for (let field in card) {
    if (!expectedCard.hasOwnProperty(field) || typeof card[field] !== expectedCard[field]) {
      return false;
    }
  }
  return true;
}

app.get('/cards', (req, res) => {
  if (cards.length === 0) {
    return res.status(200).json({ message: 'No cards found.' });
  }
  res.status(200).json(cards);
});

// Get all cards 
// Get card by id  ::: I was onlyu able to get this method to work with a api.http and use the extension REST Client
app.get('/cards/:id', (req, res) => {
  const cardId = parseInt(req.params.id);
  const card = cards.find(c => c.id === cardId);

  if (!card) {
    return res.status(404).json({ message: 'Card not found.' });
  }
  res.status(200).json(card);
});
// Add new cards
app.post('/cards', (req, res) => {
  const newCards = req.body;
  if (!Array.isArray(newCards)) {
    return res.status(400).json({ message: 'Body should be an array.' });
  }
  newCards.forEach(card => {
    if (ValCard(card) && !cards.find(c => c.id === card.id)) {
      cards.push(card);
    }
  });
  res.status(200).json({ message: 'Cards added successfully.' });
});
// Delete card by id  ::: I was onlyu able to get this method to work with a api.http and use the extension REST Client
app.delete('/cards/:id', (req, res) => {
  const cardId = parseInt(req.params.id);
  const cardIndex = cards.findIndex(c => c.id === cardId);

  if (cardIndex === -1) {
    return res.status(404).json({ message: 'Card not found.' });
  }

  cards.splice(cardIndex, 1);
  res.status(200).json({ message: 'Card deleted successfully.' });
});
// Update card by id::: I was onlyu able to get this method to work with a api.http and use the extension REST Client

app.put('/cards/:id', (req, res) => {
  const cardId = parseInt(req.params.id);
  const cardIndex = cards.findIndex(c => c.id === cardId);
  if (cardIndex === -1) {
    return res.status(404).json({ message: 'Card not found.' });
  }
  const updatedCard = req.body;
  if (updatedCard.id && updatedCard.id !== cardId) {
    return res.status(400).json({ message: 'Card id cannot be modified.' });
  }
  cards[cardIndex] = { ...cards[cardIndex], ...updatedCard };
  res.status(200).json({ message: 'Card updated successfully.' });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

