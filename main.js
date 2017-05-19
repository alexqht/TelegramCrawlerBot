console.log('Hi. I\'m the crawler bot');

const TelegramBot = require('node-telegram-bot-api');
const token = '370599266:AAHLCONwgLYMMNPBbwiBPoVst1uJtFCKbQc';
const bot = new TelegramBot(token, { polling: true });

console.log('Telegram: Connected')

const sql = require('mssql');
const config = {
    user: 'iis',
    password: 'iis',
    server: '85.85.85.85',
    database: 'Feedback',

    options: {
        encrypt: true
    }
}
sql.connect(config);
console.log('Microsoft SQL Server: Connected')


bot.on('message', (msg) => {
    console.log('------------------------------------------------------------');
	 
	var members_count;
    bot.getChatMembersCount(msg.chat.id).then(x => {
        members_count = x;
    }).then(rexa => {
		console.log('message.id          :' + msg.message_id);
        console.log('message.text        :' + msg.text);
        console.log('message.date        :' + msg.date);

        console.log('from.id             :' + msg.from.id);
        console.log('from.first_name     :' + msg.from.first_name);
        console.log('from.last_name      :' + msg.from.last_name);
        console.log('from.username       :' + msg.from.username);
        console.log('from.language_code  :' + msg.from.language_code);

        console.log('chat.id             :' + msg.chat.id);
        console.log('chat.title          :' + msg.chat.title);
        console.log('chat.first_name     :' + msg.chat.first_name);
        console.log('chat.last_name      :' + msg.chat.last_name);
        console.log('chat.username       :' + msg.chat.username);
        console.log('chat.type           :' + msg.chat.type);
        console.log('chat.members_count  :' + members_count);

        const request = new sql.Request();

        request.input('User_Id', sql.NVarChar, msg.from.id);
        request.input('User_Firstname', sql.NVarChar, msg.from.first_name);
        request.input('User_Lastname', sql.NVarChar, msg.from.last_name);
        request.input('User_Username', sql.NVarChar, msg.from.username);
        request.input('User_LanguageCode', sql.NVarChar, msg.from.language_code);
        request.input('Chat_Id', sql.NVarChar, msg.chat.id);
        request.input('Chat_Title', sql.NVarChar, msg.chat.title);
        request.input('Chat_Firstname', sql.NVarChar, msg.chat.first_name);
        request.input('Chat_Lastname', sql.NVarChar, msg.chat.last_name);
        request.input('Chat_Username', sql.NVarChar, msg.chat.username);
        request.input('Chat_Type', sql.NVarChar, msg.chat.type);
        request.input('Message_Id', sql.NVarChar, msg.message_id);
        request.input('Message_Date', sql.NVarChar, msg.date);
        request.input('Chat_MembersCount', sql.NVarChar, members_count);
        request.input('Message_Text', sql.NVarChar, msg.text);

        request.execute('CrawlerInsert', (err, result) => {
        })
    });
});

sql.on('error', err => {
    console.log('Database error: ' + err);
})