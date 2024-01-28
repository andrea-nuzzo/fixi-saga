import express from 'express';
import apiRoutes from './routes'
import dotenv from 'dotenv';
dotenv.config();

const app = express();
app.use('/api', apiRoutes);

app.get('/', (req, res) => {
  res.send('Hello Ciao!');
});

app.listen(process.env.PORT, () => {
  console.log(`Server running on port ${process.env.PORT}`);
});