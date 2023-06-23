import express from 'express';
import path from 'path';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import bodyParser from 'body-parser';
import { main } from './models/post.js';
import { handlerForm } from './models/post.js';
import { adminForm } from './models/post.js';
import { adminFormDelete } from './models/post.js';
const app = express();
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
const PORT = 3000;

const __dirname = dirname(fileURLToPath(import.meta.url));
const createPath = (page) => path.resolve(__dirname, 'ejs-views', `${page}.ejs`);

app.listen(PORT, (error) => {
    error ? console.log(error) : console.log(`Listenint port ${PORT}`);
});

app.use(express.urlencoded({ extended: false }));
app.use(express.static('styles'));
app.use(express.static('img'));
app.use(express.static('fonts'));
app.use(express.static('font-awesome-4.7.0'));
app.use("/js", express.static('js'));

const dataFromDB = await main();
export const {teachers, courses, photos} = dataFromDB;

app.get('/', (req, res) => {
    
    const title = 'HomePage';
    res.render('index', {
        title,
        resultCourses: courses,
        resultTeachers: teachers,
        resultPhotos: photos
    });

});
app.post('/', (req, res) => {
    let name = req.body.name;
    let number = req.body.number;
    let mail = req.body.mail;
    let scales = req.body.scales;
    let sogl = req.body.sogl;
    handlerForm(name, number, mail, scales, sogl);
    res.redirect('back');
});



app.get('/admin', (req, res) =>{
    res.render("admin")
})
app.post('/admin', (req, res) => {
    let text = req.body.text;
    let file = req.body.file;
    let uid = req.body.uid;
    adminForm(text, file, uid);
    res.redirect('back');
    
});



app.get('/admindelete', (req, res) =>{
    res.render("adminDelete")
})
app.post('/admindelete', (req, res) => {
   
    let uidDelete = req.body.uidDelete;
    adminFormDelete(uidDelete);
    res.redirect('back');
});



app.use((req, res) => {
    const title = 'Error';
    res
        .status(404)
        .render('error', { title });
});

