import connection
from psycopg2.extensions import AsIs


@connection.connection_handler
def get_3_cards(cursor, id1, id2, id3):
    chosen_cards = {
        'id1': id1,
        'id2': id2,
        'id3': id3
    }
    cursor.execute("""SELECT * FROM cards WHERE id=%(id1)s OR id=%(id2)s OR id=%(id3)s;""", chosen_cards)
    cards = cursor.fetchall()
    return cards
