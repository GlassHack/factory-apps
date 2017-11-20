.class final Lcom/google/android/gms/auth/trustagent/trustlet/ao;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/auth/trustagent/trustlet/an;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/an;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->a:Lcom/google/android/gms/auth/trustagent/trustlet/an;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->b:Z

    .line 64
    return-void
.end method

.method private a(Landroid/nfc/tech/IsoDep;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v7, Lcom/google/android/gms/auth/trustagent/trustlet/ad;

    invoke-direct {v7, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;-><init>(Landroid/nfc/tech/IsoDep;)V

    .line 94
    invoke-virtual {v7, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Z)Z

    .line 96
    :try_start_0
    const-string v0, "Coffee - UnlockTag"

    const-string v1, "Trying Precious protocol..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v0, "Coffee - UnlockTag"

    const-string v1, "Paired Precious tag."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    const-string v5, "NFC Unlock Tag"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    const-string v1, "Coffee - UnlockTag"

    const-string v2, "failed to close tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "Coffee - UnlockTag"

    const-string v1, "Precious not selected. Attempting to select..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/i;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v0, "Coffee - UnlockTag"

    const-string v1, "Paired Precious tag."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    const-string v5, "NFC Unlock Tag"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v1

    const-string v1, "Coffee - UnlockTag"

    const-string v2, "failed to close tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b(Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "Coffee - UnlockTag"

    const-string v1, "Precious not available. Using UID."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "NFC Unlock Tag"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :try_start_5
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 126
    :catch_3
    move-exception v1

    const-string v1, "Coffee - UnlockTag"

    const-string v2, "failed to close tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->b:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_1
    move-object v0, v6

    .line 127
    goto :goto_0

    .line 126
    :catch_4
    move-exception v0

    const-string v0, "Coffee - UnlockTag"

    const-string v1, "failed to close tag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    :try_start_8
    invoke-virtual {v7}, Lcom/google/android/gms/auth/trustagent/trustlet/ad;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 127
    :goto_2
    throw v0

    .line 126
    :catch_5
    move-exception v1

    const-string v1, "Coffee - UnlockTag"

    const-string v2, "failed to close tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private varargs a([Landroid/nfc/Tag;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 68
    array-length v0, p1

    if-nez v0, :cond_0

    move-object v0, v6

    .line 86
    :goto_0
    return-object v0

    .line 72
    :cond_0
    aget-object v3, p1, v1

    .line 74
    :try_start_0
    invoke-static {v3}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->a(Landroid/nfc/tech/IsoDep;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v3}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 79
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    const/4 v1, 0x0

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "NFC Unlock Tag"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "Coffee - UnlockTag"

    const-string v2, "failed to open precious."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 86
    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Landroid/nfc/Tag;

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->a([Landroid/nfc/Tag;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->a:Lcom/google/android/gms/auth/trustagent/trustlet/an;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ao;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/an;->a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;Z)V

    return-void
.end method
