@app.route('/update', methods=["POST"])
def update_balance(): 
    dbConn=None; cursor=None 
    
    try:

        dbConn = psycopg2.connect(DB_CONNECTION_STRING)
        cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
        query = f'''UPDATE account SET balance={request.form["balance"]} WHERE account_number  = '{request.form["account_number"]}';'''
        
        cursor.execute(query) 
        return query

    except Exception as e: 
        return str(e)

    finally:
        dbConn.commit(); 
        cursor.close(); 
        dbConn.close()