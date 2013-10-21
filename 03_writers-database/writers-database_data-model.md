
TABLE: Submissions  
DESCRIPTION: Each row describes a unique submission  

| FIELD NAME      | DATA TYPE  | DESCRIPTION                                        |
|-----------------|------------|----------------------------------------------------|
| sub_id          | integer    | Primary Key for submissions table                  |
| venue_nbr       | integer    | Foreign Key to indicate a Venue                    |
| mss_nbr         | integer    | Foreign Key to indicate a Manuscript               |
| cover_letter    | text       | Text-only contents of submission cover letter      |
| send_date       | date       | Submission date                                    |
| reply_date      | date       | Reply date                                         |
| sub_status      | text       | Options like 'pending' 'accepted' or 'declined'    |
| sub_note        | text       | Useful for storing archive of e-mail threads, etc. |
| sub_file        | text       | Filename submitted (stored in "sent" directory)    |

TABLE: Manuscripts  
DESCRIPTION: Each row describes a unique work that could be submitted  

| FIELD NAME  | DATA TYPE  | DESCRIPTION                                         |
|-------------|------------|-----------------------------------------------------|
| mss_id      | integer    | Primary Key for Manuscripts table                   |
| mss_title   | text       | Title of manuscript                                 |
| mss_type    | text       | e.g. 'poem' 'novel' 'screenplay' etc.               |
| mss_status  | text       | e.g. 'open' 'in-progress' 'trunked' or 'published'  |
| pub_date    | date       | Date this manuscript was published                  |
| venue_nbr   | integer    | Foreign Key for Venue if published                  |

TABLE: Venues  
DESCRIPTION: Each row describes a place where a submission could be sent  

| FIELD NAME    | DATA TYPE | DESCRIPTION                                         |
|---------------|-----------|-----------------------------------------------------|
| venue_id      | integer   | Primary Key for Venues table                        |
| venue_title   | text      | Name of this venue                                  |
| venue_type    | text      | e.g. 'journal' 'website' etc.                       |
| venue_url     | text      | Link to publication or submission guidelines        |
| venue_address | text      | Contact info for venue (e.g. email address)         |
| venue_person  | text      | Name of person at venue                             |
| venue_note    | text      | Notes about deadlines, preferences, etc.            |
| venue_simul   | boolean   | if 'yes,' venue accepts simultaneous submissions    |