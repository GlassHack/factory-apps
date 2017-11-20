.class abstract Lcom/google/android/gms/org/conscrypt/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/x;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/io/InputStream;)Ljava/util/List;
.end method

.method protected abstract b(Ljava/io/InputStream;)Ljava/util/List;
.end method

.method protected abstract c(Ljava/io/InputStream;)Ljava/lang/Object;
.end method

.method protected abstract d(Ljava/io/InputStream;)Ljava/lang/Object;
.end method

.method public final e(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/gms/org/conscrypt/y;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 75
    :cond_1
    new-instance v2, Ljava/io/PushbackInputStream;

    const/16 v3, 0x40

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 77
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 79
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 80
    if-gez v4, :cond_3

    .line 82
    new-instance v0, Lcom/google/android/gms/org/conscrypt/y;

    const-string v2, "inStream is empty"

    invoke-direct {v0, v2}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    if-eqz v1, :cond_2

    .line 111
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_2
    :goto_0
    new-instance v1, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 84
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 86
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_6

    .line 87
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_7

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/android/gms/org/conscrypt/x;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 89
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 106
    :cond_4
    :goto_1
    return-object v0

    .line 92
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    :cond_6
    const/4 v4, 0x4

    aget-byte v3, v3, v4

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 100
    invoke-virtual {p0, v2}, Lcom/google/android/gms/org/conscrypt/x;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/org/conscrypt/x;->d(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/org/conscrypt/x;->c(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final f(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 6

    .prologue
    const/16 v5, 0x40

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Lcom/google/android/gms/org/conscrypt/y;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/google/android/gms/org/conscrypt/y;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 133
    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 138
    :cond_2
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-direct {v3, p1, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 140
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    .line 142
    invoke-virtual {v3, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v1

    .line 143
    if-gez v1, :cond_4

    .line 145
    new-instance v0, Lcom/google/android/gms/org/conscrypt/y;

    const-string v1, "inStream is empty"

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    if-eqz v2, :cond_3

    .line 160
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 164
    :cond_3
    :goto_1
    new-instance v1, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 147
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 149
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v4

    array-length v4, v4

    if-ne v1, v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    invoke-virtual {p0, v3}, Lcom/google/android/gms/org/conscrypt/x;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_5
    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/android/gms/org/conscrypt/x;->b(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :cond_7
    if-eqz v2, :cond_8

    .line 179
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 183
    :cond_8
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/org/conscrypt/x;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/android/gms/org/conscrypt/y; {:try_start_4 .. :try_end_4} :catch_2

    .line 199
    :goto_2
    if-nez v1, :cond_7

    goto :goto_0

    .line 190
    :catch_2
    move-exception v1

    if-eqz v2, :cond_9

    .line 192
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    :cond_9
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3
.end method
