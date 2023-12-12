// from browser type :    http://localhost:3000/

const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const path = require('path')
const koneksi = require('./config/database.js');
const multer = require('multer');
const mysql = require('mysql2/promise');
const xlsx = require('xlsx');

const storage = multer.memoryStorage();
const upload = multer({ storage: storage });

const app = express()
const port = 3000

const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '', // Your database password
  database: 'PPS',
};

// app.use(express.static('public'));
app.use(express.static(path.join(__dirname, 'public')));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.set('view engine', 'ejs');

// Menangani rute untuk halaman utama
app.get('/', (req, res) => {
    const querySql = 'SELECT * FROM exam';

    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        let dataFromDatabase = [];
        // const dataFromDatabase = [
        //     { id: 1, name: 'Item 1', price: 10 },
        //     { id: 2, name: 'Item 2', price: 20 },
        //     // ...
        // ];
        rows.forEach(row=>{
            dataFromDatabase.push(row)
        })
        res.render('index', { title: 'Node.js EJS Tutorial',data: dataFromDatabase });
    });
  });

  app.get('/bankSoal', (req, res) => {
    const querySql = 'SELECT bs.id AS bank_soal_id, bs.pertanyaan, bs.tingkat_kesulitan, bs.topik, j.teks_pilihan, j.benar FROM bank_soal bs LEFT JOIN jawaban j ON bs.id = j.bank_soal_id';
  
    koneksi.query(querySql, (err, rows, field) => {
      // error handling
      if (err) {
        return res.status(500).json({ message: 'Ada kesalahan', error: err });
      }
  
      // jika request berhasil
      const dataFromDatabase = rows.reduce((acc, row) => {
        const existingItem = acc.find(item => item.bank_soal_id === row.bank_soal_id);
  
        if (existingItem) {
          // Append teks_pilihan to existing item
          existingItem.teks_pilihan.push(row.teks_pilihan);
        } else {
          // Create a new item
          acc.push({
            bank_soal_id: row.bank_soal_id,
            pertanyaan: row.pertanyaan,
            tingkat_kesulitan: row.tingkat_kesulitan,
            topik: row.topik,
            teks_pilihan: [row.teks_pilihan], // Start an array with the first teks_pilihan
            benar: row.benar
          });
        }
  
        return acc;
      }, []);
  
      res.render('bankSoal', { data: dataFromDatabase });
    });
  });
  
  

app.get('/lihatUjian/:id', (req, res) => {
    const querySql = `SELECT * FROM exam WHERE id = ${req.params.id}`;

    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        let dataFromDatabase = [];
        let soal = JSON.parse(rows[0].soal);
        
        res.render('lihatUjian', { title: 'Node.js EJS Tutorial',data: rows[0], soal });
    });
  });



  app.get('/banksoal', (req, res) => {
    res.render('bankSoal');
  });

  

app.get('/buatUjian', (req, res) => {
    res.render('buatUjian');
  });


  
app.get('/soal', (req, res) => {

    const querySql = 'SELECT * FROM bank_soal';

    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        let dataFromDatabase = [];
        
        rows.forEach(row=>{
            dataFromDatabase.push(row)
        })
        res.render('soal', { title: 'Node.js EJS Tutorial',data: dataFromDatabase });
    });

});

app.post('/upload-bank-soal', upload.single('bankSoalFile'), async (req, res) => {
  try {
    const connection = await mysql.createConnection(dbConfig);
    const workbook = xlsx.read(req.file.buffer, { type: 'buffer' });

    const bankSoalSheet = workbook.Sheets[workbook.SheetNames[0]];
    const pilihanJawabanSheet = workbook.Sheets[workbook.SheetNames[1]];

    const bankSoalData = xlsx.utils.sheet_to_json(bankSoalSheet);
    const pilihanJawabanData = xlsx.utils.sheet_to_json(pilihanJawabanSheet);

    for (const row of bankSoalData) {
      const { pertanyaan, tingkat_kesulitan, topik } = row;

      const pertanyaanValue = pertanyaan || null;
      const tingkatKesulitanValue = tingkat_kesulitan || null;
      const topikValue = topik || null;

      await connection.execute(
        'INSERT INTO bank_soal (pertanyaan, tingkat_kesulitan, topik) VALUES (?, ?, ?)',
        [pertanyaanValue, tingkatKesulitanValue, topikValue]
      );
    }

    for (const row of pilihanJawabanData) {
      const { bank_soal_id, teks_pilihan, benar } = row;

      const bankSoalIdValue = bank_soal_id || null;
      const teksPilihanValue = teks_pilihan || null;
      const benarValue = benar || null;

      await connection.execute(
        'INSERT INTO jawaban (bank_soal_id, teks_pilihan, benar) VALUES (?, ?, ?)',
        [bankSoalIdValue, teksPilihanValue, benarValue]
      );
    }

    res.send('Bank soal data successfully uploaded and imported into the database.');

    connection.end();
  } catch (error) {
    console.error('Error uploading and importing data:', error);
    res.status(500).send('An error occurred while uploading and importing data.');
  }
});

app.get('/upload', (req, res) => {
  res.render('uploadBankSoal'); // Rendering EJS template
});

// app.post('/buatUjian', (req, res) => {
//   const data = { ...req.body };
//   console.log('Raw data:', data);

//   const jumlahSoal = parseInt(data.jumlah_soal);
//   const topic = data.topic;
//   const tingkatKesulitan = {
//     mudah: (parseInt(data.mudah) / 100) * jumlahSoal,
//     sedang: (parseInt(data.sedang) / 100) * jumlahSoal,
//     sulit: (parseInt(data.sulit) / 100) * jumlahSoal,
// };



//   console.log('Parsed jumlahSoal:', jumlahSoal);
//   console.log('Parsed topic:', topic);

//   const query = `
//     SELECT bs.id AS bank_soal_id, bs.pertanyaan, 
//            GROUP_CONCAT(ja.teks_pilihan) AS teks_pilihan
//     FROM (
//         SELECT * FROM bank_soal WHERE topik = ? ORDER BY RAND() LIMIT ?
//     ) bs
//     LEFT JOIN jawaban ja ON bs.id = ja.bank_soal_id
//     GROUP BY bs.id
//     ORDER BY bs.id
//   `;

//   let selectedSoals = [];
//   console.log('Executing query:', query);
//   console.log('Placeholder values:', [topic, jumlahSoal]);

//   koneksi.query(query, [topic, jumlahSoal], (err, results) => {
//     if (err) {
//       console.error('Error selecting soal:', err);
//     } else {
//       // Log the results for debugging
//       console.log('Query results:', results, tingkatKesulitan);

//       // Extract bank_soal_id, pertanyaan, and teks_pilihan columns
//       selectedSoals = results.map(row => ({
//         bank_soal_id: row.bank_soal_id,
//         pertanyaan: row.pertanyaan,
//         teks_pilihan: row.teks_pilihan.split(','),
//         tingkatKesulitan: row.tingkatKesulitan // Split the teks_pilihan into an array
//       }));

//       // Log the contents of selectedSoals for debugging
//       console.log('Selected soals:', selectedSoals);

//       const ujianData = {
//         nama_ujian: data.nama_ujian,
//         jumlah_soal: selectedSoals.length,
//         durasi: parseInt(data.durasi),
//         tanggal: data.tanggal,
//         jam: data.jam,
//         soal: JSON.stringify(selectedSoals)
//       };

//       // Log the ujianData for debugging
//       console.log('Ujian data:', ujianData);

//       // Move the function call inside the callback
//       saveSelectedSoalsToUjian(ujianData);

//       // Redirect atau berikan respons sesuai kebutuhan
//       res.redirect('/');  // Ganti dengan halaman yang sesuai
//     }
//   });
// });

// app.post('/buatUjian', (req, res) => {
//   const data = { ...req.body };
//   console.log('Raw data:', data);

//   const jumlahSoal = parseInt(data.jumlah_soal);
//   const topics = data.topic.split(',').map(topic => topic.trim()); // Split topics and trim whitespace
//   const tingkatKesulitan = {
//     mudah: (parseInt(data.mudah) / 100) * jumlahSoal,
//     sedang: (parseInt(data.sedang) / 100) * jumlahSoal,
//     sulit: (parseInt(data.sulit) / 100) * jumlahSoal,
//   };

//   console.log('Parsed jumlahSoal:', jumlahSoal);
//   console.log('Parsed topics:', topics);

//   // Use the IN clause to select questions for multiple topics
//   const query = `
//     SELECT bs.id AS bank_soal_id, bs.pertanyaan, 
//            GROUP_CONCAT(ja.teks_pilihan) AS teks_pilihan
//     FROM (
//         SELECT * FROM bank_soal WHERE topik IN (?) ORDER BY RAND() LIMIT ?
//     ) bs
//     LEFT JOIN jawaban ja ON bs.id = ja.bank_soal_id
//     GROUP BY bs.id
//     ORDER BY bs.id
//   `;

//   let selectedSoals = [];
//   console.log('Executing query:', query);
//   console.log('Placeholder values:', [topics, jumlahSoal]);

//   koneksi.query(query, [topics, jumlahSoal], (err, results) => {
//     if (err) {
//       console.error('Error selecting soal:', err);
//     } else {
//       // Log the results for debugging
//       console.log('Query results:', results, tingkatKesulitan);

//       // Extract bank_soal_id, pertanyaan, and teks_pilihan columns
//       selectedSoals = results.map((row) => ({
//         bank_soal_id: row.bank_soal_id,
//         pertanyaan: row.pertanyaan,
//         teks_pilihan: row.teks_pilihan.split(','),
//         tingkatKesulitan: row.tingkatKesulitan // Split the teks_pilihan into an array
//       }));

//       // Log the contents of selectedSoals for debugging
//       console.log('Selected soals:', selectedSoals);

//       const ujianData = {
//         nama_ujian: data.nama_ujian,
//         jumlah_soal: selectedSoals.length,
//         durasi: parseInt(data.durasi),
//         tanggal: data.tanggal,
//         jam: data.jam,
//         soal: JSON.stringify(selectedSoals)
//       };

//       // Log the ujianData for debugging
//       console.log('Ujian data:', ujianData);

//       // Move the function call inside the callback
//       saveSelectedSoalsToUjian(ujianData);

//       // Redirect atau berikan respons sesuai kebutuhan
//       res.redirect('/');  // Ganti dengan halaman yang sesuai
//     }
//   });
// });



app.post('/buatUjian', (req, res) => {
  const data = { ...req.body };
  console.log('Raw data:', data);

  const jumlahSoal = parseInt(data.jumlah_soal);
  const topics = data.topic.split(',').map(topic => topic.trim()); // Split topics and trim whitespace
  const totalEasy = Math.ceil((parseInt(data.mudah) / 100) * jumlahSoal) || 0;
  const totalMedium = Math.ceil((parseInt(data.sedang) / 100) * jumlahSoal) || 0;
  const totalHard = jumlahSoal - totalEasy - totalMedium;
  
  console.log('Parsed jumlahSoal:', jumlahSoal);
  console.log('Parsed topics:', topics);
  console.log('Calculated totals:', totalEasy, totalMedium, totalHard);  

  

  // Use the UNION ALL clause to select questions for each difficulty level
  const query = `
    (SELECT bs.id AS bank_soal_id, bs.pertanyaan, 
            GROUP_CONCAT(ja.teks_pilihan) AS teks_pilihan
    FROM (
        SELECT * FROM bank_soal WHERE topik IN (?) AND tingkat_kesulitan = 'mudah' ORDER BY RAND() LIMIT ?
    ) bs
    LEFT JOIN jawaban ja ON bs.id = ja.bank_soal_id
    GROUP BY bs.id
    ORDER BY bs.id
    LIMIT ?)
    
    UNION ALL
    
    (SELECT bs.id AS bank_soal_id, bs.pertanyaan, 
            GROUP_CONCAT(ja.teks_pilihan) AS teks_pilihan
    FROM (
        SELECT * FROM bank_soal WHERE topik IN (?) AND tingkat_kesulitan = 'sedang' ORDER BY RAND() LIMIT ?
    ) bs
    LEFT JOIN jawaban ja ON bs.id = ja.bank_soal_id
    GROUP BY bs.id
    ORDER BY bs.id
    LIMIT ?)
    
    UNION ALL
    
    (SELECT bs.id AS bank_soal_id, bs.pertanyaan, 
            GROUP_CONCAT(ja.teks_pilihan) AS teks_pilihan
    FROM (
        SELECT * FROM bank_soal WHERE topik IN (?) AND tingkat_kesulitan = 'sulit' ORDER BY RAND() LIMIT ?
    ) bs
    LEFT JOIN jawaban ja ON bs.id = ja.bank_soal_id
    GROUP BY bs.id
    ORDER BY bs.id
    LIMIT ?)
  `;

  let selectedSoals = [];
  console.log('Executing query:', query);
  console.log('Placeholder values:', [topics, totalEasy, totalEasy, topics, totalMedium, totalMedium, topics, totalHard, totalHard]);

  // ... (previous code)

  koneksi.query(query, [topics, totalEasy, totalEasy, topics, totalMedium, totalMedium, topics, totalHard, totalHard], (err, results) => {
    if (err) {
      console.error('Error selecting soal:', err);
    } else {
      // Log the results for debugging
      console.log('Query results:', results);

      // Extract bank_soal_id, pertanyaan, and teks_pilihan columns
      selectedSoals = results.map((row) => ({
        bank_soal_id: row.bank_soal_id,
        pertanyaan: row.pertanyaan,
        teks_pilihan: row.teks_pilihan ? row.teks_pilihan.split(',') : [], // Check for null before split
      }));

      // Log the contents of selectedSoals for debugging
      console.log('Selected soals:', selectedSoals);

      const ujianData = {
        nama_ujian: data.nama_ujian,
        jumlah_soal: selectedSoals.length,
        durasi: parseInt(data.durasi),
        tanggal: data.tanggal,
        jam: data.jam,
        soal: JSON.stringify(selectedSoals)
      };

      // Log the ujianData for debugging
      console.log('Ujian data:', ujianData);

      // Move the function call inside the callback
      saveSelectedSoalsToUjian(ujianData);

      // Redirect atau berikan respons sesuai kebutuhan
      res.redirect('/');  // Ganti dengan halaman yang sesuai
    }
  });
});



// ... (the rest of your code)

function saveSelectedSoalsToUjian(ujianData) {
  // Query untuk menyimpan soal ke dalam tabel "ujian"
  const query = 'INSERT INTO exam SET ?';

  koneksi.query(query, ujianData, (err, results) => {
    if (err) {
      console.error('Error saving ujian:', err);
    } else {
      console.log('Saved ujian to database:', results);
    }
  });
}

app.delete('/api/exams/:id', (req, res) => {
  const itemId = parseInt(req.params.id, 10);

  // Delete the exam from the database
  const query = 'DELETE FROM exams WHERE id = ?';

  koneksi .query(query, [itemId], (err, results) => {
      if (err) {
          console.error('Error deleting exam:', err);
          res.status(500).json({ error: 'Internal Server Error' });
      } else if (results.affectedRows === 0) {
          res.status(404).json({ error: 'Exam not found' });
      } else {
          res.status(204).end();  // 204 No Content (success, no response body)
      }
  });
});
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
