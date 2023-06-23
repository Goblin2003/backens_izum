import mysql from 'mysql2/promise';
import mysql1 from 'mysql2';
import { config } from './config.js';

export async function main() {
  const conn = await mysql.createConnection(config);
  const [teachers] = await conn.execute("SELECT * FROM teachers");
  const [courses] = await conn.execute("SELECT * FROM kyrsi");
  const [photos] = await conn.execute("SELECT * FROM photobanner");

  const data = {
    teachers: teachers,
    courses: courses,
    photos: photos
  }

  conn.end()
  return data
}

export function handlerForm(...fields) {
  // console.log(fields);
  const conn = mysql1.createConnection(config);
  const [ name, number, mail, scales, sogl ] = fields;
  const sql = `INSERT INTO user(name, number, mail, scales, sogl) VALUES ("${name}", "${number}", "${mail}", "${scales}", "${sogl}")`;
  conn.query(sql, function (err, results) {
    if (err) {
      console.log('Ошибка');
    }
    console.log(results);
  });

  conn.end();
}
export function adminForm(...fields) {
  // console.log(fields);
  const conn = mysql1.createConnection(config);
  const [ text, file, uid ] = fields;
  console.log(text,file);
  const sql = `INSERT INTO teachers(text, image, uid) VALUES ("${text}", "/${file}", "${uid}")`;
  conn.query(sql, function (err, results) {
    if (err) {
      console.log('Ошибка');
    }
    console.log(results);
  });

  conn.end();
}
export function adminFormDelete(...fields) {
  // console.log(fields);
  const conn = mysql1.createConnection(config);
  const [ uidDelete ] = fields;
  //console.log(text,file);
  const sql = `DELETE FROM teachers WHERE uid = "${uidDelete}" `;
  conn.query(sql, function (err, results) {
    if (err) {
      console.log('Ошибка удаления');
    }
    console.log(results);
  });

  conn.end();
}