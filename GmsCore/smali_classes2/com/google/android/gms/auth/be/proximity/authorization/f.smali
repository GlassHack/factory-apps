.class public final Lcom/google/android/gms/auth/be/proximity/authorization/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/b;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/c/c/bf;

    invoke-direct {v0}, Lcom/google/c/c/bf;-><init>()V

    const-string v1, "locked"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "unlocked"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/f;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private b()Lcom/google/android/gms/auth/be/proximity/authorization/d;
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length of message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    new-array v0, v0, [B

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 110
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;

    const-string v2, "permit_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "permit_access_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to decode the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when parsing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mandatory field is missing in the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private c()Lcom/google/android/gms/auth/be/proximity/authorization/d;
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length of message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    new-array v0, v0, [B

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 138
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "authorization_request"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;

    const-string v1, "permit_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "permit_access_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to decode the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when parsing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_2
    move-exception v0

    .line 150
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mandatory field is missing in the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_1
    const-string v1, "status_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :try_start_4
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->a:Ljava/util/Map;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "permit_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 159
    goto :goto_0

    .line 157
    :catch_3
    move-exception v0

    .line 158
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mandatory field is missing in the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid message: invalid type."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private d()Lcom/google/android/gms/auth/be/proximity/authorization/d;
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length of message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    new-array v0, v0, [B

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :try_start_1
    new-instance v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;

    const-string v0, "permit_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "permit_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "payload"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to decode the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when parsing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :catch_2
    move-exception v0

    .line 187
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mandatory field is missing in the message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/be/proximity/authorization/d;
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 84
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received message with unsupported version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b()Lcom/google/android/gms/auth/be/proximity/authorization/d;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->c()Lcom/google/android/gms/auth/be/proximity/authorization/d;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/f;->d()Lcom/google/android/gms/auth/be/proximity/authorization/d;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/f;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 76
    return-void
.end method
