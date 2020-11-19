@app.route('/balance', methods=["GET"])
def alter_balance():
    try:
        return render_template("balance.html", params=request.args)
    except Exception as e: 
        return str(e)