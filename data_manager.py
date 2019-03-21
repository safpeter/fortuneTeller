import connection
from psycopg2.extensions import AsIs


@connection.connection_handler
def get_12_cards(cursor, id1, id2, id3, id4, id5, id6, id7, id8, id9, id10, id11, id12):
    chosen_cards = {
        'id1': id1,
        'id2': id2,
        'id3': id3,
        'id4': id4,
        'id5': id5,
        'id6': id6,
        'id7': id7,
        'id8': id8,
        'id9': id9,
        'id10': id10,
        'id11': id11,
        'id12': id12
    }

    cursor.execute("""SELECT * FROM cards WHERE id=%(id1)s OR id=%(id2)s OR id=%(id3)s OR id=%(id4)s OR id=%(id5)s
                       OR id=%(id6)s OR id=%(id7)s OR id=%(id8)s OR id=%(id9)s OR id=%(id10)s OR id=%(id11)s 
                       OR id=%(id12)s;""", chosen_cards)
    cards = cursor.fetchall()
    return cards
