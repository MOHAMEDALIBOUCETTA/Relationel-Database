{
  "id": "freeCodeCamp/learn-relational-databases-by-building-a-mario-database:v1.0.0",
  "version": "1.0.4",
  "summary": {
    "title": "Learn Relational Databases by Building a Mario Database",
    "description": "> Welcome to the Relational Database Lessons!"
  },
  "config": {
    "setup": {
      "commands": [
        "./.freeCodeCamp/reset.sh",
        "cd .freeCodeCamp && npm install"
      ],
      "commits": [
        "06f7b1570a53f52bd428dabad34bd157767c86ef"
      ]
    },
    "testRunner": {
      "command": "npm run programmatic-test",
      "args": {
        "tap": "--reporter=mocha-tap-reporter"
      },
      "directory": ".freeCodeCamp"
    },
    "repo": {
      "uri": "https://github.com/freeCodeCamp/learn-relational-databases-by-building-a-mario-database",
      "branch": "v1.0.4"
    },
    "continue": {
      "commands": [
        "./.freeCodeCamp/reset.sh"
      ]
    },
    "reset": {
      "commands": [
        "./.freeCodeCamp/reset.sh"
      ]
    },
    "dependencies": [
      {
        "name": "node",
        "version": ">=10"
      }
    ],
    "webhook": {
      "url": "https://api.freecodecamp.org/coderoad-challenge-completed",
      "events": {
        "init": false,
        "reset": false,
        "step_complete": false,
        "level_complete": false,
        "tutorial_complete": true
      }
    }
  },
  "levels": [
    {
      "id": "10",
      "title": "Start the Terminal",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "10.1",
          "setup": {
            "watchers": [
              "../.bash_history"
            ],
            "commits": [
              "30190ff70d8fc9987bcd64b1a48a00ed72011d20"
            ]
          },
          "content": "**The first thing you need to do is start the terminal.** Do that by clicking the \"hamburger\" menu at the top left of the screen, going to the \"terminal\" section, and clicking \"new terminal\". Once you open a new one, type `echo hello PostgreSQL` into the terminal and press enter.",
          "hints": [
            "Capitalization matters",
            "If the tests don't run automatically, try typing `exit` into the terminal and redoing the instructions"
          ]
        }
      ]
    },
    {
      "id": "20",
      "title": "Login",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "20.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "7bb67989bfb8ad6fd834c9446c1b1b600a4af0f2"
            ]
          },
          "content": "Your virtual machine comes with PostgreSQL installed. You will use the Psql terminal application to interact with it. Log in by typing `psql --username=freecodecamp dbname=postgres` into the terminal and pressing enter.",
          "hints": [
            "Capitalization matters",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal and press enter",
            "If the terminal isn't open, find the \"hamburger\" menu at the top left of the window, navigate to the \"Terminal\" tab, and click \"New Terminal\""
          ]
        }
      ]
    },
    {
      "id": "30",
      "title": "View Databases",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "30.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "d9bb3a7bc1b993fe0d9033104b255b737bc0a514"
            ]
          },
          "content": "Notice that the prompt changed to let you know that you are now interacting with PostgreSQL. First thing to do is see what databases are here. Type `\\l` into the prompt to **l**ist them.",
          "hints": [
            "Type `\\l` into the psql prompt and press enter",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "40",
      "title": "Create `first_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "40.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ec6c88734c3a3548725e476727cc50c6b8f8e31d"
            ]
          },
          "content": "The databases you see are there by default. You can make your own like this:\n\n```sql\nCREATE DATABASE database_name;\n```\n\nThe capitalized words are keywords telling PostgreSQL what to do. The name of the database is the lowercase word. Note that **all commands need a semi-colon at the end.** Create a new database named `first_database`.",
          "hints": [
            "Don't forget the semi-colon at the end",
            "Type `CREATE DATABASE first_database;` into the psql prompt and press enter",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "50",
      "title": "View `first_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "50.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "0eb29f543d8dd8f43a12a2d83ff6ed95ced81ab6"
            ]
          },
          "content": "Use the **l**ist shortcut command again to make sure your new database is there.",
          "hints": [
            "Type `\\` followed by the \"list\" shortcut letter",
            "Enter `\\l` into the psql prompt and press enter",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "60",
      "title": "Create `second_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "60.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "37306b73a36a3c78e674ad1415bd4e37c31e3baf"
            ]
          },
          "content": "It worked. Your new database is there. If you don't get a message after entering a command, it means it's incomplete and you likely forgot the semi-colon. You can just add it on the next line and press enter to finish the command. Create another database named `second_database`.",
          "hints": [
            "Use the \"CREATE DATABASE\" keywords",
            "Here's the example again: `CREATE DATABASE database_name;`",
            "Don't forget the semi-colon",
            "Try entering `CREATE DATABASE second_database;`",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "70",
      "title": "View Databases",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "70.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "7905e0a1340d7d685b58b54ec70894fa84418626"
            ]
          },
          "content": "You should have another new database now. **L**ist the databases to make sure.",
          "hints": [
            "Use the **l**ist shortcut command",
            "Enter `\\l` into the prompt",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "80",
      "title": "Connect to `second_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "80.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "2b47af1d72de16296a31da8bf0c1cf1953cee8ca"
            ]
          },
          "content": "You can **c**onnect to a database by entering `\\c database_name`. You need to connect to add information. Connect to your `second_database`.",
          "hints": [
            "Enter `\\c second_database` into the psql prompt to connect",
            "Type `psql --username=freecodecamp dbname=postgres` into the terminal to log in to psql if you aren't logged in first"
          ]
        }
      ]
    },
    {
      "id": "90",
      "title": "View `second_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "90.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "7c85fc9f9cdf640dff8b40cf2be4d1aaf1caabae"
            ]
          },
          "content": "You should see a message that you are connected. Notice that the prompt changed to `second_database=>`. So the `postgres=>` prompt before must have meant you were connected to that database. A database is made of tables that hold your data. Enter `\\d` to **d**isplay the tables.",
          "hints": [
            "Type `\\d` in the prompt and press enter",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "100",
      "title": "Create `first_table`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "100.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "55ce121eab3b854427010c69435da9dccd0afee1"
            ]
          },
          "content": "Looks like there's no tables or relations yet. Similar to how you created a database, you can create a table like this:\n\n```sql\nCREATE TABLE table_name();\n```\n\nNote that the parenthesis are needed for this one. It will create the table in the database you are connected to. Create a table named `first_table` in `second_database`.",
          "hints": [
            "Enter `CREATE TABLE first_table();` into the prompt",
            "Don't forget the semi-colon",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "110",
      "title": "View `second_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "110.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "e6d35735322a69514af410c3153ca5c1cf305586"
            ]
          },
          "content": "View the tables in `second_database` again with the **d**isplay command. You should see your new table there with a little meta data about it.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Try entering `\\d` into the prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "120",
      "title": "Create `second_table`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "120.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ec98cf3c5c855a78b7eb00b03e4e7f92526d225f"
            ]
          },
          "content": "Create another new table in this database. Give it a name of `second_table`.",
          "hints": [
            "Use the \"CREATE TABLE\" keywords",
            "Don't forget the parenthesis and semi-colon at the end",
            "Here's an example: `CREATE TABLE table_name();`",
            "Enter `CREATE TABLE second_table();` into the prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "130",
      "title": "View `second_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "130.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "500fd6eee1b0daa1de8bcbb4cffb3905c2819bf6"
            ]
          },
          "content": "There should be two tables in this database now. **D**isplay them again to make sure.",
          "hints": [
            "Use the **display** shortcut command",
            "Enter `\\d` into the prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "140",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "140.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "7ebbfd981b2d9d603af3b683358507fa9b9e4ef2"
            ]
          },
          "content": "You can view more details about a table by adding the table name after the **d**isplay command like this: `\\d table_name`. View more details about your `second_table`.",
          "hints": [
            "Enter `\\d second_table` into the prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "150",
      "title": "Create `first_column`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "150.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a67b9b7bd708cab7b3ce594b23f5426af2dd6677"
            ]
          },
          "content": "Tables need **columns** to describe the data in them, yours doesn't have any yet. Here's an example of how to add one:\n\n```sql\nALTER TABLE table_name ADD COLUMN column_name DATATYPE;\n```\n\nAdd a column to `second_table` named `first_column`. Give it a data type of `INT`. `INT` stands for integer. Don't forget the semi-colon. :smile:",
          "hints": [
            "Try entering `ALTER TABLE second_table ADD COLUMN first_column INT;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "160",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "160.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "682fd4cc8002e16b2f71f4d3567e6ce976743458"
            ]
          },
          "content": "Looks like it worked. **D**isplay the details of `second_table` again to see if your new column is there.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Put the table name after the command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "170",
      "title": "Add `id` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "170.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "d9254ef3751978332eb086e1ec04f73c9656ab9c"
            ]
          },
          "content": "Your column is there :smile: Use `ALTER TABLE` and `ADD COLUMN` to add another column to `second_table` named `id` that's a type of `INT`.",
          "hints": [
            "Here's the example again: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Don't forget the semi-colon :wink:",
            "You added the last column with: `ALTER TABLE second_table ADD COLUMN first_column INT;`",
            "Try entering `ALTER TABLE second_table ADD COLUMN id INT;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "180",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "180.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5d6990c1ba5d26decbb0eeb78e37b32f38c66d5b"
            ]
          },
          "content": "Your table should have an `id` column added. View the details of `second_table` to make sure.",
          "hints": [
            "Use the **d**isplay command",
            "Add a table name after the **d**isplay command to view details",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "190",
      "title": "Add `age` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "190.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "7474b7d60b8d3d2c58fe63d193c5540384e920d3"
            ]
          },
          "content": "Add another column to `second_table` named `age`. Give it a data type of `INT`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's the example again: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "You added the last column with: `ALTER TABLE second_table ADD COLUMN id INT;`",
            "Try using `ALTER TABLE second_table ADD COLUMN age INT;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "200",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "200.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "72aa3eaed530d398d47458c70fc3bd7b3fab617d"
            ]
          },
          "content": "Take look at the details of `second_table` again.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Add the table name to the shortcut command to see details",
            "Here's an example: `\\d table_name`",
            "Enter `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "210",
      "title": "Drop `age` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "210.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "52bcb62d077a52d37255a7f746d08d3a7acd41fc"
            ]
          },
          "content": "Those are some good looking columns. You will probably need to know how to remove them. Here's an example:\n\n```sql\nALTER TABLE table_name DROP COLUMN column_name;\n```\n\nDrop your `age` column.",
          "hints": [
            "Try entering `ALTER TABLE second_table DROP COLUMN age;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "220",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "220.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "8797c42404b8dfc157310f7862b24e5361f4b64f"
            ]
          },
          "content": "View the details of `second_table` to see if it's gone.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Add the table name to the shortcut command to see details",
            "Here's an example: `\\d table_name`",
            "Enter `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "230",
      "title": "Drop `first_column` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "230.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "57d3290e99b57b4dcedf3fc3f53a3d5b90db23fa"
            ]
          },
          "content": "It's gone. Use the `ALTER TABLE` and `DROP COLUMN` keywords again to drop `first_column`.",
          "hints": [
            "Here's the example again: `ALTER TABLE table_name DROP COLUMN column_name;`",
            "You dropped the last column with: `ALTER TABLE second_table DROP COLUMN age;`",
            "Try entering `ALTER TABLE second_table DROP COLUMN first_column;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "240",
      "title": "Add `name` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "240.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b8d3e51d3c0b531fd599bcb23915a557cc8e7c0f"
            ]
          },
          "content": "A common data type is `VARCHAR`. It's a short string of characters. You need to give it a maximum length when using it like this: `VARCHAR(30)`.\n\nAdd a new column to `second_table`, give it a name of `name` and a data type of `VARCHAR(30)`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "You added the last column like this: `ALTER TABLE second_table ADD COLUMN age INT;`",
            "Try entering `ALTER TABLE second_table ADD COLUMN name VARCHAR(30);`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "250",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "250.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "706aac4aae8db9f4502c2aac4fee33dbfdd6f4b1"
            ]
          },
          "content": "Take look at the details of `second_table` to see your columns.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "260",
      "title": "Rename `name` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "260.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "fe093d8a8d2d2ee757d0012aa9b97543a58df020"
            ]
          },
          "content": "You can see the `VARCHAR` type there. The `30` means the data in it can a max of 30 characters. You named that column `name`, it should have been `username`. Here's how you can rename a column:\n\n```sql\nALTER TABLE table_name RENAME COLUMN column_name TO new_name;\n```\n\nRename the `name` column to `username`.",
          "hints": [
            "Use `second_table` as the table name, `name` as the column name, and `username` as the new name for the column",
            "Try entering `ALTER TABLE second_table RENAME COLUMN name TO username;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "270",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "270.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "aaf6f3b9f57b4f7ca12c54985481e6d670d4bc38"
            ]
          },
          "content": "Take look at the details of `second_table` again to see if it got renamed.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Enter `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "280",
      "title": "Insert Samus Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "280.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1b76a40529407c5e7a58c3ead0b7529a607e8ef0"
            ]
          },
          "content": "It worked. Rows are the actual data in the table. You can add one like this:\n\n```sql\nINSERT INTO table_name(column_1, column_2) VALUES(value1, value2);\n```\n\nInsert a row into `second_table`. Give it an `id` of `1`, and a `username` of `Samus`. The username column expects a `VARCHAR`, so you need to put Samus in single quotes like this: `'Samus'`.",
          "hints": [
            "The table is `second_table`, the column names are `id` and `username`, and the values to add are `1` and `'Samus'`",
            "Don't forget the semi-colon",
            "Try entering `INSERT INTO second_table(id, username) VALUES(1, 'Samus');`",
            "If you missed a matching single quote, try entering `');` to finish the command and try again",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "290",
      "title": "View `second_table` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "290.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "f101b5efcfa400825420434b7c01da7fbe3995a2"
            ]
          },
          "content": "You should have one row in your table. You can view the data in a table by querying it with the `SELECT` statement. Here's how it looks:\n\n```sql\nSELECT columns FROM table_name;\n```\n\nUse a `SELECT` statement to view **all** the columns in `second_table`. Use an asterisk (`*`) to denote that you want to see all the columns.",
          "hints": [
            "Replace `columns` in the example with the all (`*`) symbol",
            "Use `second_table` as the table name",
            "Enter `SELECT * FROM second_table;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "300",
      "title": "Insert Mario Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "300.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "cb4d90a73c2fae96f8fa9e56b0a82973e25dbb47"
            ]
          },
          "content": "There's your one row. **Insert** another row **into** `second_table`. Fill in the `id` and `username` columns with the **values** `2` and `'Mario'`.",
          "hints": [
            "Here's the example: `INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);`",
            "Did you make `Mario` a string?",
            "You added the last row with `INSERT INTO second_table(id, username) VALUES(1, 'Samus');`",
            "Try entering `INSERT INTO second_table(id, username) VALUES(2, 'Mario');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "310",
      "title": "View `second_table` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "310.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "fc9138a0a06267dc0924464ce523662a50030d21"
            ]
          },
          "content": "You should now have two rows in the table. Use `SELECT` again to view **all** the columns and rows **from** `second_table`.",
          "hints": [
            "Here's the example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM second_table;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "320",
      "title": "Insert Luigi Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "320.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "3fd1625535b1ece92035d436bcba9ce40fce605b"
            ]
          },
          "content": "**Insert** another row **into** `second_table`. Use `3` as the `id`, and `Luigi` as the `username` this time.",
          "hints": [
            "Did you put `Luigi` in single quotes?",
            "Here's the example: `INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);`",
            "You added the last row with `INSERT INTO second_table(id, username) VALUES(2, 'Mario');`",
            "Try entering `INSERT INTO second_table(id, username) VALUES(3, 'Luigi');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "330",
      "title": "View `second_table` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "330.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "204e95ab80f6d907c58a3e7c0ebc1773787308a6"
            ]
          },
          "content": "You should now have three rows. Use `SELECT` again to see **all** the data you entered.",
          "hints": [
            "Here's the example again: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM second_table;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "340",
      "title": "Delete Luigi Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "340.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6592d43206c35e69f321fdb41988bdd83d901b82"
            ]
          },
          "content": "That gives me an idea :smiley: You can make a database of Mario video game characters. You should start from scratch for it. Why don't you delete the record you just entered. Here's an example of how to delete a row:\n\n```sql\nDELETE FROM table_name WHERE condition;\n```\n\nRemove Luigi from your table. The condition you want to use is `username='Luigi'`.",
          "hints": [
            "Check your table name and condition closely",
            "Try entering `DELETE FROM second_table WHERE username='Luigi';`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "350",
      "title": "View `second_table` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "350.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "a1003c397ab5672dc378ab3b9456c6d244083426"
            ]
          },
          "content": "Luigi should be gone. Use `SELECT` again to see all the data and make sure he's not there.",
          "hints": [
            "Here's the example: `SELECT columns FROM table_name;`",
            "Use `*` to see all the columns",
            "Try `SELECT * FROM second_table;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "360",
      "title": "Delete Mario Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "360.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "8f4ee718be2b4d3c95efcf6bce1e79902eee57a7"
            ]
          },
          "content": "It's gone. You can scrap all this for the new database. **delete** Mario **from** `second_table` using the same command as before, except make the condition `username='Mario'` this time.",
          "hints": [
            "Use the `DELETE FROM` and `WHERE` keywords",
            "Here's the example: `DELETE FROM table_name WHERE condition;`",
            "You deleted Luigi with `DELETE FROM second_table WHERE username='Luigi';`",
            "Try entering `DELETE FROM second_table WHERE username='Mario';`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "370",
      "title": "Delete Samus Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "370.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "db59f00bdebeb89d3aa9543333a1244ea8e839fe"
            ]
          },
          "content": "Only one more row should remain. **Delete** Samus **from** `second_table`.",
          "hints": [
            "Here's the example: `DELETE FROM table_name WHERE condition;`",
            "You deleted Mario with `DELETE FROM second_table WHERE username='Mario';`",
            "Use `username='Samus'` as the condition",
            "Try entering `DELETE FROM second_table WHERE username='Samus';`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "380",
      "title": "View `second_table` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "380.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "789884530b00552706ae9ad552a65f2b126c5d15"
            ]
          },
          "content": "Use `SELECT` again to see all the rows in `second_table` to make sure they're gone.",
          "hints": [
            "Here's the example `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Enter `SELECT * FROM second_table;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "390",
      "title": "View `second_table` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "390.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "d8509a62fc7fd7a5cbd3beb240153dbddfb6ad40"
            ]
          },
          "content": "Looks like they're all gone. Remind yourself what columns you have in `second_table` by looking at its **d**etails.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Add the table name after the shortcut command",
            "Here's an example: `\\d table_name`",
            "Try `\\d second_table`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "400",
      "title": "Drop `username` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "400.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "58d2f9aa00717d0aea7b85a108b6cc4a51d26fa8"
            ]
          },
          "content": "There's two columns. You won't need either of them for the Mario database. **Alter** the **table** `second_table` and **drop** the **column** `username`.",
          "hints": [
            "Use the `ALTER TABLE` and `DROP COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name DROP COLUMN column_name;`",
            "You dropped a column before with: `ALTER TABLE second_table DROP COLUMN age;`",
            "Try `ALTER TABLE second_table DROP COLUMN username;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "410",
      "title": "Drop `id` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "410.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5bf7ca733243a8e2d44b4280eb518ce913174ffb"
            ]
          },
          "content": "Next, drop the `id` column.",
          "hints": [
            "Use the `ALTER TABLE` and `DROP COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name DROP COLUMN column_name;`",
            "You previously dropped a column with `ALTER TABLE second_table DROP COLUMN username;`",
            "Enter `ALTER TABLE second_table DROP COLUMN id;` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "420",
      "title": "View `second_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "420.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "5f61a6a19cb3cc0d71350917cdafdef7054582bd"
            ]
          },
          "content": "Okay, the table has no rows or columns left. View the tables in this database to see what is here.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "You don't need a table name with the command",
            "Try entering `\\d`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "430",
      "title": "Drop `second_table`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "430.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "4184241c562b8c42aecfe62525ee5bfd8d0af537"
            ]
          },
          "content": "Still two. You won't need either of those for the new database either. Drop `second_table` from your database. Here's an example:\n\n```sql\nDROP TABLE table_name;\n```",
          "hints": [
            "Enter `DROP TABLE second_table;` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "440",
      "title": "Drop `first_table`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "440.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "4cf26a5d6afa8ebf0d6e3fa779391e1667a6d76c"
            ]
          },
          "content": "Next, drop `first_table` from the database.",
          "hints": [
            "Here's an example: `DROP TABLE table_name;`",
            "Enter `DROP TABLE first_table;` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "450",
      "title": "View Databases",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "450.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "c652b242ac3f09ea6ffde9134b7ee9b1eb4b48cb"
            ]
          },
          "content": "All the tables are gone now, too. View all the databases using the command to **l**ist them.",
          "hints": [
            "Use the **l**ist shortcut command",
            "Enter `\\l` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "460",
      "title": "Rename `first_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "460.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "444e0d81c097bd49b87cf17b55e2da4f519de75f"
            ]
          },
          "content": "Rename `first_database` to `mario_database`. You can rename a database like this:\n\n```sql\nALTER DATABASE database_name RENAME TO new_database_name;\n```",
          "hints": [
            "Try entering `ALTER DATABASE first_database RENAME TO mario_database;`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "470",
      "title": "View Databases",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "470.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "2027a3cdf84cd1f182b859c91fc799bf43d0a3a5"
            ]
          },
          "content": "List the databases to make sure it got renamed.",
          "hints": [
            "Use the **l**ist shortcut command",
            "Enter `\\l`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "480",
      "title": "Connect to `mario_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "480.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "3576ec79449ba46a3cfb7a6da13d0c3781a21725"
            ]
          },
          "content": "**C**onnect to your newly named database so you can start adding your characters.",
          "hints": [
            "Use the `\\c` shortcut command to connect to a database",
            "Add the database name after the command",
            "Here's an example: `\\c database_name`",
            "Enter `\\c mario_database`",
            "Enter `psql --username=freecodecamp dbname=second_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "490",
      "title": "Drop `second_database`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "490.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "cfbda653f6d949f9d2089edb3fb8e3b69573e790"
            ]
          },
          "content": "Now that you aren't connected to `second_database`, you can drop it. Use the `DROP DATABASE` keywords to do that.",
          "hints": [
            "Add the database name after the keywords",
            "Don't forget the semi-colon",
            "Here's an example: `DROP DATABASE database_name;`",
            "Enter `DROP DATABASE second_database;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "500",
      "title": "View Databases",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "500.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "41080bc5a2b69e83669f7cbf3d0b92cc820d7c41"
            ]
          },
          "content": "List the databases again to make sure it's gone.",
          "hints": [
            "Use the **l**ist shortcut command",
            "Enter `\\l`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "530",
      "title": "Display `mario_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "530.1",
          "setup": {
            "watchers": [
              "../pg.log"
            ],
            "commits": [
              "669b030d1fb09057acbe2be1ab483511dd9a5ce1"
            ]
          },
          "content": "Okay, I think you're ready to get started. I don't think you created any tables here, take a look to make sure.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Try entering `\\d`",
            "Try entering `\\c mario_database`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "540",
      "title": "Create `characters` Table",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "540.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "adfedb1b64613569f051ad5acd4551e69ad0a948"
            ]
          },
          "content": "Create a new table name `characters`, it will hold some basic information about Mario characters.",
          "hints": [
            "Use the `CREATE TABLE` keywords",
            "Don't forget the parenthesis and semi-colon at the end",
            "Here's an example: `CREAT TABLE table_name();`",
            "Try entering `CREATE TABLE characters();`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "550",
      "title": "Add `character_id` column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "550.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "e87fbd0af3b708a6d5763ab19796a32d64ffd989"
            ]
          },
          "content": "Next, you can add some columns to the table. Add a column named `character_id` to your new table that is a type of `SERIAL`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name TYPE;`",
            "Try entering `ALTER TABLE characters ADD COLUMN character_id SERIAL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "560",
      "title": "View `characters` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "560.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5c902878448f0c6c2c2261666b074292b4d0f724"
            ]
          },
          "content": "The `SERIAL` type will make your column an `INT` with a `NOT NULL` constraint, and automatically increment the integer when a new row is added. View the details of the `characters` table to see what `SERIAL` did for you.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "570",
      "title": "Add `name` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "570.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "f771008d5314d81c83741140990be43673be8c12"
            ]
          },
          "content": "Add a column to `characters` called `name`. Give it a data type of `VARCHAR(30)`, and a constraint of `NOT NULL`. Add a constraint by putting it right after the data type.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT;`",
            "Try entering `ALTER TABLE characters ADD COLUMN name VARCHAR(30) NOT NULL;` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "580",
      "title": "Add `homeland` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "580.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "49459d469342bd77f71da1093421ef9dbd01e2e1"
            ]
          },
          "content": "You can make another for where they are from. Add another column named `homeland`. Give it a data type of `VARCHAR` that has a max length of `60`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Try entering `ALTER TABLE characters ADD COLUMN homeland VARCHAR(60);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "590",
      "title": "Add `favorite_color` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "590.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "bed6c3a7e687db3633667a066e2adc289918036e"
            ]
          },
          "content": "Video game characters are quite colorful. Add one more column named `favorite_color`. Make it a `VARCHAR` with a max length of `30`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Try entering `ALTER TABLE characters ADD COLUMN favorite_color VARCHAR(30);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "600",
      "title": "View `characters` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "600.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "067a020972c894d0eb1411c4b37767ea1ba77c8e"
            ]
          },
          "content": "You should have four columns in `characters`. Take a look at the details of it to see how things are going.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Add a table name to the shortcut command to see details",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "610",
      "title": "Insert Mario Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "610.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "3e592006d6878829b576cba203f4b5d937f72d49"
            ]
          },
          "content": "You are ready to start adding some rows. First is Mario. Earlier, you used this command to add a row:\n\n```sql\nINSERT INTO second_table(id, username) VALUES(1, 'Samus');\n```\n\nThe first parenthesis are the column names, you can put as many columns as you want. The second parenthesis are values for those columns. Add a row to your table, give it a `name` of `Mario`, a `homeland` of `Mushroom Kingdom`, and a `favorite_color` of `Red`. Make sure to use single quotes where needed.",
          "hints": [
            "Here's an example: `INSERT INTO table_name(column1, column2, column3) VALUES(value1, value2, value3);`",
            "Try using `INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "620",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "620.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5242422adb513ce8b12c783a7a2bc95a73be9048"
            ]
          },
          "content": "Mario should have a row now and his `character_id` should have been automatically added. View **all** the data in your `characters` table with `SELECT` to see.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "630",
      "title": "Insert Luigi Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "630.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "cc2cbd95676d43dbb37529371ee5d2364ee20989"
            ]
          },
          "content": "Add another row for Luigi. Give it a `name` of `Luigi`, a `homeland` of `Mushroom Kingdom`, and a `favorite_color` of `Green`.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column1, column2, column3) VALUES(value1, value2, value3);`",
            "Don't forget the quotes and semi-colon",
            "Try using `INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "640",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "640.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "f6c06657dcc9d4b88d6edb485a53706a46c0521f"
            ]
          },
          "content": "View all the data in your `characters` table with `SELECT` again.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "650",
      "title": "Insert Peach Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "650.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "f257897fc532baddff77880bdc654e89c9eb60dc"
            ]
          },
          "content": "Okay, it looks like it's all working. Add another row for Peach. Give her the values: `Peach`, `Mushroom Kingdom`, and `Pink`.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column1, column2, column3) VALUES(value1, value2, value3);`",
            "Don't forget the quotes and semi-colon",
            "Try using `INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "660",
      "title": "Add Toadstool and Bowser Rows",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "660.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6b444ea219c8bb09048b9ce58ce4de15e0598f53"
            ]
          },
          "content": "Adding rows one at a time is quite tedious. Here's an example of how you could have added the previous three rows at once:\n\n```sql\nINSERT INTO characters(name, homeland, favorite_color)\nVALUES('Mario', 'Mushroom Kingdom', 'Red'),\n('Luigi', 'Mushroom Kingdom', 'Green'),\n('Peach', 'Mushroom Kingdom', 'Pink');\n```\n\nAdd two more rows. Give the first one values of: `Toadstool`, `Mushroom Kingdom`, and `Red`. Give the second one: `Bowser`, `Mushroom Kingdom`, and `Green`. Try to add them with one command.",
          "hints": [
            "Make sure you added commas and quotes where needed",
            "Try entering `INSERT INTO characters(name, homeland, favorite_color) VALUES('Toadstool', 'Mushroom Kingdom', 'Red'), ('Bowser', 'Mushroom Kingdom', 'Green');` in the psql prompt",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "670",
      "title": "Add Daisy and Yoshi Rows",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "670.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b72ff377a4f94624a8d2605b90b38dc0bfb62895"
            ]
          },
          "content": "If you don't get a message after a command, it is likely incomplete. This is because you can put a command on multiple lines. Add two more rows. Give the first one values of: `Daisy`, `Sarasaland`, and `Yellow`. The second: `Yoshi`, `Dinosaur Land`, and `Green`. Try to do it with one command.",
          "hints": [
            "Make sure you added commas and quotes where needed",
            "You previously used `INSERT INTO characters(name, homeland, favorite_color) VALUES('Toadstool', 'Mushroom Kingdom', 'Red'), ('Bowser', 'Mushroom Kingdom', 'Green');`",
            "Try entering `INSERT INTO characters(name, homeland, favorite_color) VALUES('Daisy', 'Sarasaland', 'Yellow'), ('Yoshi', 'Dinosaur Land', 'Green');`",
            "If you missed a matching single quote, try entering `');` to finish the command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "680",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "680.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "d0c2a2f8bf0d2599b1ac51fbf3d190796e5ceeb2"
            ]
          },
          "content": "Take a look all the data in your table with `SELECT` to see where you stand.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "690",
      "title": "Update Daisy's `favorite_color`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "690.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6e84bf7a75252733494e9a920f4b90ef39e338e1"
            ]
          },
          "content": "It looks good, but there's a few mistakes. You can change a value like this:\n\n```sql\nUPDATE table_name SET column_name=new_value WHERE condition;\n```\n\nYou used `username='Samus'` as a condition earlier. `SET` Daisy's `favorite_color` to `Orange`. You can use the condition `name='Daisy'` to change her row.",
          "hints": [
            "There should be two sets of single quotes in this command",
            "Without the keywords, it looks like this: `characters favorite_color='Orange' name='Daisy';`",
            "Try `UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "700",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "700.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1434d2954e485bb9df69fbb05eb2b4b6fa75fc8d"
            ]
          },
          "content": "The command you just used does exactly what it sounds like. It finds the row where `name` is `Daisy`, and sets her `favorite_color` to `Orange`. Take a look all the data in your table again to see if she got updated.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "710",
      "title": "Update Toadstool's `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "710.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1f83b1996f0b7d36068e31e2af5f30063b0d7b01"
            ]
          },
          "content": "Her favorite color was updated. Toadstool's name is wrong as well, it's actually `Toad`. Use `UPDATE` to `SET` his `name` to `Toad`. Use the condition `favorite_color='Red'`.",
          "hints": [
            "Here's an example: `UPDATE table_name SET column_name=new_value WHERE condition;`",
            "Here's the second part of the command: `SET name='Toad' WHERE favorite_color='Red';`",
            "Try entering `UPDATE characters SET name='Toad' WHERE favorite_color='Red';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "720",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "720.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "61d7949b5a959ad3d8288b2b6369aae9ad0a61e0"
            ]
          },
          "content": "Take a look all the data in your table.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "730",
      "title": "Update Mario's `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "730.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "2187d6b5ddc21746bbbe12c2efdc82f8ad4400ef"
            ]
          },
          "content": "Using `favorite_color='Red'` was not a good idea. Mario's name changed to Toad because he likes red, and now there's two rows that are the same. Well, almost. Only the `character_id` is different. You will have to use that to change it back to `Mario`. Use `UPDATE` to set the `name` to `Mario` for the row with the lowest `character_id`.",
          "hints": [
            "Use the `UPDATE`, `SET`, and `WHERE` keywords and strings where needed",
            "Here's an example: `UPDATE table_name SET column_name=new_value WHERE condition;`",
            "Try entering `UPDATE characters SET name='Mario' WHERE character_id=1;` in the psql prompt. Or whatever the correct `character_id` is.",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "740",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "740.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5321c400d0dc332382a68e99aca1b908d38f1de8"
            ]
          },
          "content": "Take a look all the data in your table again to see if Mario's name got changed back.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "750",
      "title": "Update Toad's `favorite_color`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "750.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c52086cab70c4062f3a9a35f5f2dfd56c2180f3f"
            ]
          },
          "content": "Looks like it worked. Toad's favorite color is wrong. He likes blue. Change Toad's favorite color to `Blue`. Use whatever condition you want, but don't change any of the other rows.",
          "hints": [
            "Use the `UPDATE`, `SET`, and `WHERE` keywords",
            "Here's an example: `UPDATE table_name SET column_name=newvalue WHERE condition;`",
            "I recommend using `character_id=4` as the condition",
            "Try entering `UPDATE characters SET favorite_color='Blue' WHERE character_id=4;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "760",
      "title": "Update Bowser's `favorite_color`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "760.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a88b8793f290de142a68c547bc1c1a61efdbcf74"
            ]
          },
          "content": "Bowser's `favorite_color` is wrong. He likes `Yellow`. Why don't you update it without changing any of the other rows.",
          "hints": [
            "Use the `UPDATE`, `SET`, and `WHERE` keywords",
            "Here's an example: `UPDATE table_name SET column_name=new_value WHERE condition;`",
            "I recommend using `character_id=5` as the condition",
            "Try entering `UPDATE characters SET favorite_color='Yellow' WHERE character_id=5;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "770",
      "title": "Update Bowser's `homeland`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "770.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c27c9f585ea856ce7d16d37d21ef929d0e62997e"
            ]
          },
          "content": "Bowser's `homeland` is wrong as well. He's from the `Koopa Kingdom`. Why don't you change it to that without changing any other rows.",
          "hints": [
            "Use the `UPDATE`, `SET`, and `WHERE` keywords",
            "Here's an example: `UPDATE table_name SET column_name=new_value WHERE condition;`",
            "I recommend using `character_id=5` as the condition",
            "Try entering `UPDATE characters SET homeland='Koopa Kingdom' WHERE character_id=5;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "780",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "780.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "f53ba21433896e14862c3105c23955bbc02821a7"
            ]
          },
          "content": "Take a look all the data in your table again to make sure there's no more issues.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example; `SELECT rows FROM table_name;`",
            "Try entering `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "790",
      "title": "View Sorted `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "790.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ca58b66c3ade77af5d7489970241dc14ef92713e"
            ]
          },
          "content": "Actually, you should put that in order. Here's an example:\n\n```sql\nSELECT columns FROM table_name ORDER BY column_name;\n```\n\nView all the data again, but put it in order by `character_id`.",
          "hints": [
            "Try entering `SELECT * FROM characters ORDER BY character_id;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "800",
      "title": "Add `name` Primary Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "800.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "13f2eb6efbbccf36d52c74e8ee4520b453fa03db"
            ]
          },
          "content": "It looks good. Next, you are going to add a **primary key**. It's a column that uniquely identifies each row in the table. Here's an example of how to set a `PRIMARY KEY`:\n\n```sql\nALTER TABLE table_name ADD PRIMARY KEY(column_name);\n```\n\nThe `name` column is pretty unique, why don't you set that as the primary key for this table.",
          "hints": [
            "You don't need quotes, but you do need a semi-colon :smile:",
            "Try entering `ALTER TABLE characters ADD PRIMARY KEY(name);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "810",
      "title": "View `characters` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "810.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "55e16046ef52d2a4d9ca94afa088e68c1e3f0f5f"
            ]
          },
          "content": "You should set a primary key on every table and there can only be one per table. Take a look at the details of your `characters` table to see the primary key at the bottom.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "820",
      "title": "Drop `name` Primary Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "820.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "3b1415ab8ff87145275556449f77652bce37850b"
            ]
          },
          "content": "You can see the key for your `name` column at the bottom. It would have been better to use `character_id` for the primary key. Here's an example of how to drop a constraint:\n\n```sql\nALTER TABLE table_name DROP CONSTRAINT constraint_name;\n```\n\nDrop the primary key on the `name` column. You can see the **constraint name** is `characters_pkey`.",
          "hints": [
            "Try using `ALTER TABLE characters DROP CONSTRAINT characters_pkey;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "830",
      "title": "View `character` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "830.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b8fd451bb1a27ab4ec5e815def50cd7f519fe490"
            ]
          },
          "content": "View the details of the `characters` table to make sure it's gone.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "840",
      "title": "Add `character_id` Primary Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "840.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "44f2f12cd562286472c346489af2919d9f7a39f1"
            ]
          },
          "content": "It's gone. Set the primary key again, but use the `character_id` column this time.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD PRIMARY KEY` keywords",
            "Here's an example: `ALTER TABLE table_name ADD PRIMARY KEY(column_name);`",
            "Try entering `ALTER TABLE characters ADD PRIMARY KEY(character_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "850",
      "title": "View `character` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "850.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "4475ba987b56717bd5844f1236921e9a9bc2d9ea"
            ]
          },
          "content": "View the details of the `characters` table to see the new primary key.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "860",
      "title": "Create `more_info` Table",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "860.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c89708b66a521a5de971bbafbcee83bd066a5e37"
            ]
          },
          "content": "That's better. The table looks complete for now. Next, create a new table named `more_info` for some extra info about the characters.",
          "hints": [
            "Use the `CREATE TABLE` keywords",
            "Here's an example: `CREATE TABLE table_name();`",
            "Try entering `CREATE TABLE more_info();`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "870",
      "title": "View `mario_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "870.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "0715270f8283302d00592c56eb13df55208d606a"
            ]
          },
          "content": "View the tables in `mario_database` again with the **d**isplay command. You should have two tables now.",
          "hints": [
            "Don't put a table name after the command",
            "Enter the `\\d` command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "880",
      "title": "View `characters` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "880.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "2b6cfa7047b950bdec577a5bf4b683e21b022907"
            ]
          },
          "content": "I wonder what that third one is. It says `characters_character_id_seq`. I think I have a clue. View the details of the `characters` table.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Add the table name after the command",
            "You previously used `\\d second_table`",
            "Enter `\\d characters`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "890",
      "title": "Create `more_info_id` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "890.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ed27803d7ef296fda5735ff919fca2b4d5f20d45"
            ]
          },
          "content": "That is what finds the next value for the `character_id` column. Add a column to your new table named `more_info_id`. Make it a type of `SERIAL`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name TYPE;`",
            "Try entering `ALTER TABLE more_info ADD COLUMN more_info_id SERIAL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "895",
      "title": "Create `more_info` Primary Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "895.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b9ec8864e2a9b0142bc8ce7c50fcb182041ea364"
            ]
          },
          "content": "Set your new column as the primary key for this table.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD PRIMARY KEY` keywords",
            "Here's an example: `ALTER TABLE table_name ADD PRIMARY KEY(column_name);`",
            "Try entering `ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "900",
      "title": "View `mario_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "900.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ca390920e8318b89afc09d5f46b28ae80114d439"
            ]
          },
          "content": "View the tables in `mario_database` again with the display command. There should be another sequence there for the `more_info_id` because it also automatically increments.",
          "hints": [
            "Enter the `\\d` command",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "910",
      "title": "Add `birthday` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "910.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ecbf4ba43353fdbeaaae821cd1489130f4e881b7"
            ]
          },
          "content": "There it is. Add another column to `more_info` named `birthday`. Give it a data type of `DATE`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Try entering `ALTER TABLE more_info ADD COLUMN birthday DATE;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "920",
      "title": "Add `height` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "920.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ad0a9ce4eb5e8ae2c9e2ad552d5b44c9bafa45de"
            ]
          },
          "content": "Add a `height` column to `more_info` that's a type of `INT`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Try entering `ALTER TABLE more_info ADD COLUMN height INT;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "930",
      "title": "Add `weight` Columns",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "930.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "26e8239e13fbcfb1df4065e26bd516b0542440c9"
            ]
          },
          "content": "Add a `weight` column. Give it a type of `NUMERIC(4, 1)`. That data type is for decimals. `NUMERIC(4, 1)` has up to four digits and one of them has to be right of the decimal.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`",
            "Try entering `ALTER TABLE more_info ADD COLUMN weight NUMERIC(4, 1);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "940",
      "title": "View `more_info` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "940.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "267179f61adcc4368ac6f808c34ecee11afdbc69"
            ]
          },
          "content": "Take a look at the details of `more_info` to see all your columns.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d more_info`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "950",
      "title": "Add `character_id` Foreign Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "950.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a42b841eccbe204dab47abc31452b9970e44561d"
            ]
          },
          "content": "There’s your four columns and the primary key you created at the bottom. To know what row a character is for, you need to set a **foreign key** so you can relate rows from this table to rows from your `characters` table. Here's an example that creates a column as a foreign key:\n\n```sql\nALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);\n```\n\nThat's quite the command. In the `more_info` table, create a `character_id` column. Make it an `INT` and a foreign key that references the `character_id` column from the `characters` table. Good luck.",
          "hints": [
            "You can do it!",
            "Give it one more try",
            "Without the keywords, it looks like this: `more_info character_id characters(character_id);`",
            "Try this `ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "960",
      "title": "View `more_info` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "960.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1f1e0f270870deb92f7d9f31307f5ed0897fdcc9"
            ]
          },
          "content": "To set a row in `more_info` for Mario, you just need to set the `character_id` (foreign key) value to whatever it is in the `characters` table. Take a look at the details of `more_info` to see your foreign key.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d more_info`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "970",
      "title": "Add `UNIQUE`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "970.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "00b80d1291899caf8c8b7ec813313beb5c3d8a0e"
            ]
          },
          "content": "There's your foreign key at the bottom. These tables have a \"one-to-one\" relationship. **One** row in the `characters` table will be related to exactly **one** row in `more_info` and vice versa. Enforce that by adding the `UNIQUE` constraint to your foreign key. Here's an example:\n\n```sql\nALTER TABLE table_name ADD UNIQUE(column_name);\n```\n\nAdd the `UNIQUE` constraint to the column you just added.",
          "hints": [
            "It's the `character_id` column in `more_info`",
            "Try `ALTER TABLE more_info ADD UNIQUE(character_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "980",
      "title": "Add `NOT NULL`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "980.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "e0680950082a3327c0bf9389176241667b56c578"
            ]
          },
          "content": "The column should also be `NOT NULL` since you don't want to have a row that is for nobody. Here's an example:\n\n```sql\nALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;\n```\n\nAdd the `NOT NULL` constraint to your foreign key column.",
          "hints": [
            "The foreign key column is `character_id` in the `more_info` table",
            "Try `ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "990",
      "title": "View `more_info` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "990.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "89d9dc455244ec477d4afd730427e575f11fb1a4"
            ]
          },
          "content": "Take a look at the details of your `more_info` table to see all the keys and constraints you added.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d more_info`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1000",
      "title": "Select `character_id`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1000.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "8735e2914b3b75af66b9f865462ef5e4360c57b3"
            ]
          },
          "content": "The structure is set, now you can add some rows. First, you need to know what `character_id` you need for the foreign key column. You have viewed all columns in a table with `*`. You can pick columns by putting in the column name instead of `*`. Use `SELECT` to view the `character_id` column **from** the `characters` table.",
          "hints": [
            "Here's an example: `SELECT column FROM table_name;`",
            "Enter `SELECT character_id FROM characters;` in the psql prompt",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1010",
      "title": "Select `character_id` and `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1010.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b44923881e97caceeef4bc606d8cb573629d5cf0"
            ]
          },
          "content": "That list of numbers doesn't really help. Use `SELECT` again to display both the `character_id` and `name` columns from the `characters` table. You can separate the column names with a comma to view both.",
          "hints": [
            "Here's an example: `SELECT column1, column2 FROM table_name;`",
            "Try entering `SELECT character_id, name FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1020",
      "title": "Add `more_info` for Mario",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1020.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "fbdc3943fa2cfdda0088806bad83596b5b7741db"
            ]
          },
          "content": "That's better. You can see Mario's id there. Here's some more info for him:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1981-07-09 | 155    | 64.5   |\n\nAdd a row to `more_info` with the above data for Mario using the `INSERT INTO` and `VALUES` keywords. Be sure to set his `character_id` when adding him. Also, `DATE` values need a string with the format: `'YYYY-MM-DD'`.",
          "hints": [
            "Here's an example: `INSERT INTO table_name(columns) VALUES(values);`",
            "You previously used `INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1);`",
            "Or, enter the above command and replace the `1` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1030",
      "title": "View `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1030.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "283f1fd4b1c932684bc2812217440770cfbd623a"
            ]
          },
          "content": "View all the data in `more_info` to make sure it's looking good.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1040",
      "title": "Select `character_id` and `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1040.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "915af238328d54930c70f3303a54f745cd276878"
            ]
          },
          "content": "Next, you are going to add some info for Luigi. Use `SELECT` again to view the `character_id` and `name` columns **from** the `characters` table to find his id.",
          "hints": [
            "Here's an example: `SELECT column1, column2 FROM table_name;`",
            "Try entering `SELECT character_id, name FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1050",
      "title": "Add `more_info` for Luigi",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1050.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6374ec92fbcdd8f21640706197f1fe3221d82f17"
            ]
          },
          "content": "You can see Luigi's id there. Here's his info:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1983-07-14 | 175    | 48.8   |\n\nAdd a row in `more_info` for Luigi using the above info. Be sure to add his `character_id` as well.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Be sure to put `DATE` values in quotes with the format: `'YYYY-MM-DD'`",
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1983-07-14', 175, 48.8, 2);`",
            "Or, enter the above command and replace the `2` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1060",
      "title": "View `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1060.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "7ba7744ce0d1a0f5bcca229508876841d10706d7"
            ]
          },
          "content": "View all the data in `more_info` to see more info for Luigi.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1070",
      "title": "Select `character_id` and `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1070.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "da82fbefe7076af78f0bb612f8c780c08e2199e9"
            ]
          },
          "content": "Peach is next. View the `character_id` and `name` columns from the `characters` table again so you can find her id.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT column1, column2 FROM table_name;`",
            "Try entering `SELECT character_id, name FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1080",
      "title": "Add `more_info` for Peach",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1080.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "e73b7208e11daa831f904ae87e2b58cefabbe37d"
            ]
          },
          "content": "Here's the additional info for Peach:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1985-10-18 | 173    | 52.2   |\n\nAdd a row for Peach using the above info. Be sure to add her `character_id` as well.",
          "hints": [
            "Be sure to put `DATE` values in quotes with the format: `'YYYY-MM-DD'`",
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1983-07-14', 175, 48.8, 2);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1985-10-18', 173, 52.2, 3);`",
            "Or, enter the above command and replace the `3` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1090",
      "title": "Select Toad's `character_id` and `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1090.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "87b6532a4a39866dc2e2cf25b537f4c732d26575"
            ]
          },
          "content": "Toad is next. Instead of viewing all the rows to find his id, you can just view his row with a `WHERE` condition. You used several earlier to delete and update rows. You can use it to view rows as well. Here's an example:\n\n```sql\nSELECT columns FROM table_name WHERE condition;\n```\n\nA condition you used before was `username='Samus'`. Find Toad's id by viewing the `character_id` and `name` columns from `characters` for only his row.",
          "hints": [
            "Don't forget the semi-colon :smile:",
            "Use `name='Toad'` for the condition",
            "Try entering `SELECT character_id, name FROM characters WHERE name='Toad';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1100",
      "title": "Add `more_info` for Toad",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1100.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "9b890931c7230d1758b07f0c30b4998f3448d113"
            ]
          },
          "content": "Here's what Toad's info looks like:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1950-01-10 | 66     | 35.6   |\n\nAdd the above info for Toad. Be sure to add his `character_id`.",
          "hints": [
            "Put `DATE` values in quotes",
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1985-10-18', 173, 52.2, 3);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1950-01-10', 66, 35.6, 4);`",
            "Or, enter the above command and replace the `4` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1110",
      "title": "View `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1110.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "9d182f1f018f76c6961919ac16804754c859a0a8"
            ]
          },
          "content": "View all the data in `more_info` to see the rows you added.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1120",
      "title": "Select Bowser's Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1120.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ff68de58f6990042bdacf087c9f2559e3aadf244"
            ]
          },
          "content": "Bowser is next. Find his ID by viewing the `character_id` and `name` columns for only his row.",
          "hints": [
            "Use the `SELECT`, `FROM`, and `WHERE` keywords",
            "Here's an example: `SELECT columns FROM table_name WHERE condition;`",
            "I recommend `name='Bowser'` as the condition",
            "Try entering `SELECT character_id, name FROM characters WHERE name='Bowser';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1130",
      "title": "Add `more_info` for Bowser",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1130.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ce5cbd88a996a28028f58d9f9afc125d9bdab5a0"
            ]
          },
          "content": "Here's what Bowser's info looks like:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1990-10-29 | 258    | 300    |\n\nAdd the above info for Bowser. Don't forget to add his `character_id`.",
          "hints": [
            "Be sure to put `DATE` values in quotes with the format: `'YYYY-MM-DD'`",
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1950-01-10', 66, 35.6, 4);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-10-29', 258, 300, 5);`",
            "Or, enter the above command and replace the `5` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1140",
      "title": "Select Daisy's Row",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1140.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "9fdbf7f2e5ca2bba4c0a8354373aa67012a85e7b"
            ]
          },
          "content": "Daisy is next. Find her ID by viewing the `character_id` and `name` columns for only her row.",
          "hints": [
            "Use the `SELECT`, `FROM`, and `WHERE` keywords",
            "Here's an example: `SELECT columns FROM table_name WHERE condition;`",
            "Use `name='Daisy'` as the condition",
            "Try entering `SELECT character_id, name FROM characters WHERE name='Daisy';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1150",
      "title": "Add `more_info` for Daisy",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1150.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "956c25d667e3d15d325c84abccc9fb9a18d96e0f"
            ]
          },
          "content": "The info for Daisy looks like this:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1989-07-31 | NULL   | NULL   |\n\nAdd the above info for Daisy to `more_info`. Be sure to add her `character_id` as well. You can use `NULL` or simply not include the null columns when inserting.",
          "hints": [
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-10-29', 173, 300, 5);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1989-07-31', NULL, NULL, 6);`",
            "Or, enter the above command and replace the `6` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1160",
      "title": "View `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1160.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "ddf9b1b2668f9b65ff0023feedec11d6cbea7c3e"
            ]
          },
          "content": "View all the data in `more_info` to see the rows you added.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to see all columns",
            "Try entering `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1170",
      "title": "Select Yoshi's `character_id` and `name`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1170.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "aacd7273ff6a7d4dbc2ee0865bda2f601ba73705"
            ]
          },
          "content": "Null values show up as blank. Yoshi is last. Find his ID by viewing the `character_id` and `name` columns for only his row.",
          "hints": [
            "Use the `SELECT`, `FROM` and `WHERE` keywords",
            "Here's an example: `SELECT columns FROM table_name WHERE condition;`",
            "Try entering `SELECT character_id, name FROM characters WHERE name='Yoshi';`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1180",
      "title": "Add `more_info` for Yoshi",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1180.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c32c1c287460e83a0da123e868aba224b94789c2"
            ]
          },
          "content": "The info for Yoshi looks like this:\n\n| birthday   | height | weight |\n| ---------- | ------ | ------ |\n| 1990-04-13 | 162    | 59.1   |\n\nAdd the above info for Yoshi to `more_info`. Be sure to include his `character_id`.",
          "hints": [
            "You got this one!",
            "You previously used `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1989-07-31', NULL, NULL, 6);`",
            "Try `INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-04-13', 162, 59.1, 7);`",
            "Or, enter the above command and replace the `7` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1190",
      "title": "View all `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1190.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "513b1836cf978845b034f6eb334d3ebdceb460ac"
            ]
          },
          "content": "There should be a lot of data in `more_info` now. Take a look at **all** the rows and columns in it.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Try `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1200",
      "title": "Rename `height` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1200.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5fdadea200f14d3b733d321b85150b89ef5ebd63"
            ]
          },
          "content": "It looks good. There is something you can do to help out though. What units do the `height` and `weight` columns use? It's centimeters and kilograms, but nobody will know. Rename the `height` column to `height_in_cm`.",
          "hints": [
            "Use the `ALTER TABLE`, `RENAME COLUMN` and `TO` keywords",
            "Here's an example: `ALTER TABLE table_name RENAME COLUMN column_name TO new_name;`",
            "Try `ALTER TABLE more_info RENAME COLUMN height TO height_in_cm;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1210",
      "title": "Rename `weight` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1210.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "11fb05c081a8e24b587502c993dc19dbb9b7188f"
            ]
          },
          "content": "Rename the `weight` column to `weight_in_kg`.",
          "hints": [
            "Use the `ALTER TABLE`, `RENAME COLUMN` and `TO` keywords",
            "Here's an example: `ALTER TABLE table_name RENAME COLUMN column_name TO new_name;`",
            "Try `ALTER TABLE more_info RENAME COLUMN weight TO weight_in_kg;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1230",
      "title": "View all `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1230.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6c448e59e883a99a0db52995bcb63095477826bc"
            ]
          },
          "content": "Take a quick look at all the data in `more_info` to see the new column names.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Try `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1240",
      "title": "Create `sounds` Table",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1240.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "7ea5035e61379aabb08fb0e0f07966d702344f8a"
            ]
          },
          "content": "Next, you will make a `sounds` table that holds filenames of sounds the characters make. You created your other tables similar to this:\n\n```sql\nCREATE TABLE table_name();\n```\n\nInside those parenthesis you can put columns for a table so you don't need to add them with a separate command, like this:\n\n```sql\nCREATE TABLE table_name(column_name DATATYPE CONSTRAINTS);\n```\n\nCreate a new table named `sounds`. Give it a column named `sound_id` of type `SERIAL` and a contraint of `PRIMARY KEY`.",
          "hints": [
            "Try entering `CREATE TABLE sounds(sound_id SERIAL PRIMARY KEY);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1260",
      "title": "View `mario_database` Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1260.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a20897ad938eeaa47a455e5c4a95c512c2533b25"
            ]
          },
          "content": "View the tables in `mario_database` to make sure it worked.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Try entering `\\d`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1270",
      "title": "Add `filename` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1270.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "31874c417a160eb15ed8d39db8baded29ae59f8c"
            ]
          },
          "content": "There's your `sounds` table. Add a column to it named `filename`. Make it a `VARCHAR` that has a max length of `40` and with constraints of `NOT NULL` and `UNIQUE`. You can put those contraints at the end of the query to add them all.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "Give it three properties: `VARCHAR(40) NOT NULL UNIQUE`",
            "Here's an example: `ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINTS;`",
            "Try entering `ALTER TABLE sounds ADD COLUMN filename VARCHAR(40) NOT NULL UNIQUE;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1280",
      "title": "Add `sounds` Foreign Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1280.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "cd61337b0d4b518b7b1993c4e2051b68f0ca4cb8"
            ]
          },
          "content": "You want to use `character_id` as a foreign key again. This will be a \"one-to-many\" relationship because **one** character will have **many** sounds, but no sound will have more than one character. Here's the example again:\n\n```sql\nALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES referenced_table_name(referenced_column_name);\n```\n\nAdd a column to `sounds` named `character_id`. Give it the properties `INT`, `NOT NULL`, and set it as a foreign key that references `character_id` from `characters`.",
          "hints": [
            "You can do this!",
            "Give it one more try, take a close look at all those values and keywords",
            "Without the keywords, it looks like this: `sounds character_id characters(character_id);`",
            "Try using `ALTER TABLE sounds ADD COLUMN character_id INT NOT NULL REFERENCES characters(character_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1290",
      "title": "View `sounds ` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1290.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "cee3d594940ef2d7575a97df4f4c329edfb27ed7"
            ]
          },
          "content": "Take a look at the details of the `sounds` table to see all the columns.",
          "hints": [
            "Use the **d**isplay shortcut command",
            "Here's an example: `\\d table_name`",
            "Try entering `\\d sounds`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1300",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1300.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "f6be395d974b68b68ff32a667df183628e3cfcc3"
            ]
          },
          "content": "Next you will add some rows. But first, view all the data in `characters` so you can find the correct id's again. **Order** them **by** `character_id` like you did earlier.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name ORDER BY column;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM characters ORDER BY character_id;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1310",
      "title": "Insert `its-a-me.wav`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1310.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "dd737759214f857e33e6d07caacbf2bb878ac607"
            ]
          },
          "content": "The first file is named `its-a-me.wav`. Insert it into the `sounds` table with Mario's id as the `character_id`.",
          "hints": [
            "Don't for get the quotes",
            "Use `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2);`",
            "Try `INSERT INTO sounds(filename, character_id) VALUES('its-a-me.wav', 1);`",
            "Or, enter the above command and replace the `1` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1320",
      "title": "Insert `yippee.wav`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1320.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "27ba46de9ba08965682346378e2467663170525e"
            ]
          },
          "content": "Add another row with a `filename` of `yippee.wav`. Use Mario's `character_id` again for the foreign key value.",
          "hints": [
            "Don't forget the quotes",
            "You previously used: `INSERT INTO sounds(filename, character_id) VALUES('its-a-me.wav', 1);`",
            "Try entering `INSERT INTO sounds(filename, character_id) VALUES('yippee.wav', 1);`",
            "Or, enter the above command and replace the `1` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1330",
      "title": "Insert `ha-ha.wav`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1330.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "e303d81913114eb31a9d321c1dd5dee4538eb449"
            ]
          },
          "content": "Add another row to `sounds` for Luigi named `ha-ha.wav`. Use his `character_id` this time. Take a look at the data in `characters` to find his id if you need to.",
          "hints": [
            "You previously used: `INSERT INTO sounds(filename, character_id) VALUES('its-a-me.wav', 1);`",
            "Try entering `INSERT INTO sounds(filename, character_id) VALUES('ha-ha.wav', 2);`",
            "Or, enter the above command and replace the `2` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1340",
      "title": "Insert `oh-yeah.wav`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1340.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "57ef05a646e83f7842a02a3c72621c0c683e0a94"
            ]
          },
          "content": "Add another row with a filename of `oh-yeah.wav`. This one is for Luigi as well so use his `character_id` again.",
          "hints": [
            "Try `INSERT INTO sounds(filename, character_id) VALUES('oh-yeah.wav', 2);`",
            "Or, enter the above command and replace the `2` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1350",
      "title": "Insert Sounds for Peach",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1350.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "bf93b4ac27fe43888c6b8de85d185060ded11c99"
            ]
          },
          "content": "Add two more rows for Peach sounds. The filenames are `yay.wav` and `woo-hoo.wav`. Don't forget her `character_id`. Try to do it with one command.",
          "hints": [
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "Find her `character_id` by viewing data in the `characters` table",
            "Try `INSERT INTO sounds(filename, character_id) VALUES('yay.wav', 3), ('woo-hoo.wav', 3);`",
            "Or, enter the above command and replace the `3` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1360",
      "title": "Insert Two More Sounds",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1360.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "0464b759f31160c09bc6931d43720e9dc4ef6537"
            ]
          },
          "content": "Add two more rows. The filenames are `mm-hmm.wav` and `yahoo.wav`. The first one is for Peach again, the second is for Mario, so use the correct foreign key values. Try to do it with one command.",
          "hints": [
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "Find their `character_id` by viewing data in the `characters` table",
            "Try `INSERT INTO sounds(filename, character_id) VALUES('mm-hmm.wav', 3), ('yahoo.wav', 1);`",
            "Or, enter the above command and replace the `3` and `1` with the correct `character_id`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1370",
      "title": "View `sounds` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1370.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "98e8929b916eb64d21d97fbb099c8a8cc00b8f42"
            ]
          },
          "content": "View all the data in the `sounds`. You should be able to see the \"one-to-many\" relationship better. One character has many sounds.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM sounds;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1380",
      "title": "Create `actions` Table",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1380.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "27d3ee12f375fbaff6e79105f76f436a7fd39d10"
            ]
          },
          "content": "See the \"one-to-many\" relationship? Create another new table called `actions`. Give it a column named `action_id` that's a type of `SERIAL`, and make it the `PRIMARY KEY`. Try to create the table and add the column with one command.",
          "hints": [
            "Use `CREATE TABLE`, `SERIAL`, and `PRIMARY KEY`",
            "You previously used `CREATE TABLE sounds(sound_id SERIAL PRIMARY KEY);`",
            "Try entering `CREATE TABLE actions(action_id SERIAL PRIMARY KEY);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1390",
      "title": "Add `action` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1390.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "5f8eb18afd029743b636fe6e15a15aae6da3d479"
            ]
          },
          "content": "Add a column named `action` to your new table. Give it a type of `VARCHAR` that is a max length of `20` and has `UNIQUE` and `NOT NULL` constraints.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "You previously used `ALTER TABLE sounds ADD COLUMN filename VARCHAR(40) NOT NULL UNIQUE;`",
            "Try entering `ALTER TABLE actions ADD COLUMN action VARCHAR(20) UNIQUE NOT NULL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1400",
      "title": "Insert `run`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1400.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a8dd9691640d68d746fc632a95143b5e174c2e64"
            ]
          },
          "content": "The actions table won't have any foreign keys. It's going to have a \"many-to-many\" relationship with the characters table. This is because **many** of the characters can perform **many** actions. You will see why you don't need a foreign key later. Insert a row into the `actions` table. Give it an `action` of `run`.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Don't forget the single quotes",
            "Here's an example `INSERT INTO table(column) VALUES(value);`",
            "Try entering `INSERT INTO actions(action) VALUES('run');`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1410",
      "title": "Insert `jump`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1410.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c2de13c625cd007af7e1d222db0dba27e69c458e"
            ]
          },
          "content": "Insert another row into the `actions` table. Give it an `action` of `jump`.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Don't forget the single quotes",
            "You previously used `INSERT INTO actions(action) VALUES('run');`",
            "Try entering `INSERT INTO actions(action) VALUES('jump');`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1420",
      "title": "Insert `duck`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1420.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "30a23d291bf167eba0a9775d6d7112eae6fba742"
            ]
          },
          "content": "Add another action row with an `action` of `duck`.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Don't forget the single quotes",
            "You previously used `INSERT INTO actions(action) VALUES('jump');`",
            "Try entering `INSERT INTO actions(action) VALUES('duck');`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1430",
      "title": "View `actions` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1430.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "de09284864694b2559df4a8dea7065b9ca5887e5"
            ]
          },
          "content": "View all the data in `actions` to make sure there's no mistakes.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM actions;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1440",
      "title": "Create Junction Table",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1440.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "933ea7cc0f466b79270f0d3969e8b331df041cda"
            ]
          },
          "content": "It look good. \"Many-to-many\" relationships usually use a **junction** table to link two tables together, forming two \"one-to-many\" relationships. Your `characters` and `actions` table will be linked using a junction table. Create a new table called `character_actions`. It will describe what actions each character can perform.",
          "hints": [
            "Use the `CREATE TABLE` keywords",
            "You previously used `CREATE TABLE more_info();`",
            "Try entering `CREATE TABLE character_actions();`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1450",
      "title": "Add `character_id` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1450.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1828df1947505536e5305b91475aa42ee6895b55"
            ]
          },
          "content": "Your junction table will use the primary keys from the `characters` and `actions` tables as foreign keys to create the relationship. Add a column named `character_id` to your junction table. Give it the type of `INT` and constraint of `NOT NULL`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "You previously used: `ALTER TABLE actions ADD COLUMN name VARCHAR(20) UNIQUE NOT NULL;`",
            "Try entering `ALTER TABLE character_actions ADD COLUMN character_id INT NOT NULL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1460",
      "title": "Add `character_id` as Foreign Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1460.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "230295f235e67450c083192d77c73098084c51d1"
            ]
          },
          "content": "The foreign keys you set before were added when you created the column. You can set an existing column as a foreign key like this:\n\n```sql\nALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);\n```\n\nSet the `character_id` column you just added as a foreign key that references the `character_id` from the `characters` table.",
          "hints": [
            "Without the keywords, it looks like this: `character_actions character_id characters(character_id);`",
            "All the info you need is there, read it closely",
            "Try this: `ALTER TABLE character_actions ADD FOREIGN KEY(character_id) REFERENCES characters(character_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1470",
      "title": "View `character_actions` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1470.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "a32b168c2f4cd93f64399f213dc2b0441b8ac274"
            ]
          },
          "content": "View the details of the `character_actions` table to see the foreign key you added.",
          "hints": [
            "Use the **d**isplay command",
            "Add the table name after the command",
            "Enter `\\d character_actions`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1480",
      "title": "Add `action_id` Column",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1480.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "6d13c44b11ed320f4580b799f3c3e90ec39699ba"
            ]
          },
          "content": "Add another column to `character_actions` named `action_id`. Give it a type of `INT` and constraint of `NOT NULL`.",
          "hints": [
            "Use the `ALTER TABLE` and `ADD COLUMN` keywords",
            "You previously used: `ALTER TABLE character_actions ADD COLUMN character_id INT NOT NULL;`",
            "Try entering `ALTER TABLE character_actions ADD COLUMN action_id INT NOT NULL;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1500",
      "title": "Add `action_id` as Foreign Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1500.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "c1f0fcb3326168308ea9c6cf5336ee315eed5d47"
            ]
          },
          "content": "This will be a foreign key as well. Set the `action_id` column you just added as a foreign key that references the `action_id` column from the `actions` table.",
          "hints": [
            "Here's the example again: `ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);`",
            "Without the keywords, it looks like this: `character_actions action_id actions(action_id);`",
            "You previously used: `ALTER TABLE characters_actions ADD FOREIGN KEY(character_id) REFERENCES characters(character_id);`",
            "Here it is `ALTER TABLE character_actions ADD FOREIGN KEY(action_id) REFERENCES actions(action_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1510",
      "title": "View `character_actions` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1510.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "388e7e988ca063593f94d3c23350fe1a3dae9652"
            ]
          },
          "content": "View the details of the `character_actions` table to see your keys.",
          "hints": [
            "Use the **d**isplay command",
            "Add the table name after the command",
            "Enter `\\d character_actions`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1520",
      "title": "Create Composite Primary Key",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1520.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "8794f8c04ff270ad74b5c5980e4cba9cbdcfa062"
            ]
          },
          "content": "Every table should have a primary key. Your previous tables had a single column as a primary key. This one will be different. You can create a primary key from two columns, known as a **composite** primary key. Here's an example:\n\n```sql\nALTER TABLE table_name ADD PRIMARY KEY(column1, column2);\n```\n\nUse `character_id` and `action_id` to create a composite primary key for this table.",
          "hints": [
            "Try `ALTER TABLE character_actions ADD PRIMARY KEY(character_id, action_id);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1530",
      "title": "View `character_actions` Details",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1530.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "1ab07d9f46620b2ae5d4a48682eba311ea667419"
            ]
          },
          "content": "This table will have multiple rows with the same `character_id`, and multiple rows the same `action_id`. So neither of them are unique. But you will never have the same `character_id` and `action_id` in a single row. So the two columns together can be used to uniquely identify each row. View the details of the `character_actions` table to see your composite key.",
          "hints": [
            "Use the **d**isplay command",
            "Add the table name after the command",
            "Enter `\\d character_actions`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1540",
      "title": "Insert Yoshi Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1540.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "0a7ee591624cfe91b0f62ed66f502123ff9ebf89"
            ]
          },
          "content": "Insert three rows into `character_actions` for all the actions Yoshi can perform. He can perform all of them in the `actions` table. View the data in the `characters` and `actions` table to find the correct id's for the information.",
          "hints": [
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(7, 1), (7, 2), (7, 3);`",
            "Or, enter the above command and use the correct ID's",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1550",
      "title": "View `character_actions` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1550.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "90155c901485a8bf1b2631a96373bb085e9bdcf7"
            ]
          },
          "content": "View all the data in `character_actions` to see your rows.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM character_actions;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1560",
      "title": "Insert Daisy Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1560.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "d55a8b98e4bf7192157b486f61401a82a539375e"
            ]
          },
          "content": "Add three more rows into `character_actions` for all of Daisy's actions. She can perform all of the actions, as well.",
          "hints": [
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(7, 1), (7, 2), (7, 3);`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(6, 1), (6, 2), (6, 3);`",
            "Or, enter the above command and use the correct ID's",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1570",
      "title": "Insert Bowser Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1570.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "888d4c3bf17d00b2888912459d53e0d3db3ef381"
            ]
          },
          "content": "Bowser can perform all the actions. Add three rows to the table for him.",
          "hints": [
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Use `1`, `2`, and `3` for the `action_id` values",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(6, 1), (6, 2), (6, 3);`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(5, 1), (5, 2), (5, 3);`",
            "Or, enter the above command and use the correct ID's",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1580",
      "title": "Insert Toad Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1580.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "b12e4023a7e48000d6d18d2e62c940c994576132"
            ]
          },
          "content": "Next is Toad. Add three more rows for his actions.",
          "hints": [
            "Add a row into `character_actions` for each action `Toad` can perform",
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(5, 1), (5, 2), (5, 3)`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(4, 1), (4, 2), (4, 3);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1590",
      "title": "Insert Peach Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1590.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "7478d81f18a0c517699eaf0482263b4fbd12bd6a"
            ]
          },
          "content": "You guessed it. Peach can perform all the actions as well, so add three more rows for her.",
          "hints": [
            "Add a row into `character_actions` for each action `Peach` can perform",
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(4, 1), (4, 2), (4, 3)`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(3, 1), (3, 2), (3, 3);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1600",
      "title": "Insert Luigi Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1600.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "e21eab6dbcde287702880063e5610232e05d5ec3"
            ]
          },
          "content": "Add three more rows for Luigi's actions.",
          "hints": [
            "Add a row into `character_actions` for each action `Luigi` can perform",
            "He can perform all the actions",
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Use the `INSERT INTO` and `VALUES` keywords",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(3, 1), (3, 2), (3, 3)`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(2, 1), (2, 2), (2, 3);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1610",
      "title": "Insert Mario Actions",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1610.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "d9bf9a9569dd10e2b6553a7e625e5faab7fe8d92"
            ]
          },
          "content": "Last is Mario, add three rows for his actions.",
          "hints": [
            "Add a row into `character_actions` for each action `Mario` can perform",
            "View the data in the `characters` and `actions` table to find the correct id's for the information.",
            "Here's an example: `INSERT INTO table_name(column_1, column_2) VALUES(value_1, value_2), (value_1, value_2);`",
            "You previously used `INSERT INTO character_actions(character_id, action_id) VALUES(2, 1), (2, 2), (2, 3)`",
            "Try `INSERT INTO character_actions(character_id, action_id) VALUES(1, 1), (1, 2), (1, 3);`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1620",
      "title": "View `character_actions` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1620.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "0d4b83533d4795040b4278c49ca271aceb071e7a"
            ]
          },
          "content": "That was a lot of work. View all the data in `character_actions` to see the rows you ended up with.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM character_actions;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1630",
      "title": "Display Tables",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1630.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "9534258caefa282f627758e4bbab188c1d211c4f"
            ]
          },
          "content": "Well done. The database is complete for now. Take a look around to see what you ended up with. First, display all the tables you created.",
          "hints": [
            "Use the **d**isplay command",
            "Enter `\\d`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1640",
      "title": "View `characters` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1640.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "9bb2cad0b0e43a33b174e57ebf3b1498d7138139"
            ]
          },
          "content": "There's five tables there. Nice job. Next, take a look at all the data in the `characters` table.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM characters;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1650",
      "title": "View `more_info` Data",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1650.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "803ce37a9fa73765082748e4332b087fd899f7dd"
            ]
          },
          "content": "Those are some lovely characters. View all the data in the `more_info` table.",
          "hints": [
            "Use the `SELECT` and `FROM` keywords",
            "Here's an example: `SELECT columns FROM table_name;`",
            "Use `*` to select all the columns",
            "Try entering `SELECT * FROM more_info;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1660",
      "title": "Full Join `characters` on `more_info`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1660.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "73fa39e730074622a27f4000564faca42e08df00"
            ]
          },
          "content": "You can see the `character_id` there so you just need to find the matching id in the `characters` table to find out who it's for. Or... You added that as a foreign key, that means you can get all the data from both tables with a `JOIN` command:\n\n```sql\nSELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;\n```\n\nEnter a join command to see **all** the info from both tables. The two tables are `characters` and `more_info`. The columns are the `character_id` column from both tables since those are the linked keys.",
          "hints": [
            "Use `*` to see all the columns",
            "Give it one more try, read closely",
            "Without the keywords, it looks like this: `characters more_info characters.character_id = more_info.character_id`",
            "Try entering `SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1670",
      "title": "Full Join `characters` on `sounds`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1670.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "480efbdbe10551d126522f0401ff1d0e72591ccf"
            ]
          },
          "content": "Now you can see all the info from both tables. If you recall, that's a \"one-to-one\" relationship. So there's one row in each table that matches a row from the other. Use another `JOIN` command to view the `characters` and `sounds` tables together. They both use the `character_id` column for their keys as well.",
          "hints": [
            "Here's the example again: `SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;`",
            "Use `*` to see all the columns",
            "You previously used `SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id;`",
            "Try entering `SELECT * FROM characters FULL JOIN sounds ON characters.character_id = sounds.character_id;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already"
          ]
        }
      ]
    },
    {
      "id": "1680",
      "title": "Join `character_actions` with `characters` and `actions`",
      "summary": "",
      "content": "",
      "steps": [
        {
          "id": "1680.1",
          "setup": {
            "watchers": [
              "../queryResults.log"
            ],
            "commits": [
              "bd5ba8c103f250bc1f054951b9c20d2aeec6fa34"
            ]
          },
          "content": "This shows the \"one-to-many\" relationship. You can see that some of the characters have more than one row because they have **many** sounds. How can you see all the info from the `characters`, `actions`, and `character_actions` tables? Here's an example that joins three tables:\n\n```sql\nSELECT columns FROM junction_table\nFULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column\nFULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column;\n```\n\nCongratulations on making it this far. This is the last step. View all the data from `characters`, `actions`, and `character_actions` by joining all three tables. When you see the data, be sure to check the \"many-to_many\" relationship. Many characters will have many actions.",
          "hints": [
            "Use the `character_id` column to join `character_actions` and `characters`",
            "Use the `action_id` column to join `character_actions` and `actions`",
            "Without the keywords, it looks like this: `character_actions characters character_actions.character_id = characters.character_id actions character_actions.action_id = actions.action_id;`",
            "Try entering `SELECT * FROM character_actions FULL JOIN characters ON character_actions.character_id = characters.character_id FULL JOIN actions ON character_actions.action_id = actions.action_id;`",
            "Enter `psql --username=freecodecamp dbname=mario_database` into the terminal to log in if you aren't already",
            "If the tests aren't running automatically, quit psql with `\\q` and try logging in again"
          ]
        }
      ]
    }
  ]
}