.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/b;


# instance fields
.field private final a:Ljava/io/DataInputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a:Ljava/io/DataInputStream;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/be/proximity/registration/v3/c;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 65
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 68
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

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
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

    .line 76
    :cond_2
    new-array v0, v0, [B

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "enable_easyunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/c;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when parsing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Received a message with invalid type: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 56
    return-void
.end method
