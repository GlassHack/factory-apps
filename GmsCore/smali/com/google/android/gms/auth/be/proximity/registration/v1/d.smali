.class public final Lcom/google/android/gms/auth/be/proximity/registration/v1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/b;


# instance fields
.field private final a:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a:Ljava/io/DataInputStream;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/be/proximity/registration/v1/b;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 47
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 49
    :cond_0
    if-eq v2, v4, :cond_1

    .line 50
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received message with unsupported version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length of message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-array v2, v2, [B

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 65
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    move v3, v1

    move-object v2, v0

    move-object v1, v0

    .line 67
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 68
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 69
    const-string v7, "permit_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_3
    const-string v7, "permit_access_id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 73
    :cond_4
    const-string v0, "data"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x8

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to decode the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when parsing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected field %s in message."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :cond_6
    if-nez v2, :cond_7

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received invalid message: missing permitId."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_7
    if-nez v1, :cond_8

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received invalid message: missing permitAccessId."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_8
    if-nez v0, :cond_9

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received invalid message: missing data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_9
    new-instance v3, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 38
    return-void
.end method
