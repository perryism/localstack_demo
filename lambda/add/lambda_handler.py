def handle(event, context):
    x = event["x"]
    y = event["y"]
    return { "result": float(x) + float(y) }
