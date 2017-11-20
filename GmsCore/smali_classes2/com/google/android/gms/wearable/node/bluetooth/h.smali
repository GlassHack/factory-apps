.class final Lcom/google/android/gms/wearable/node/bluetooth/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/google/android/gms/wearable/node/bluetooth/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/g;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iput-object p2, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 166
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method

.method public final read([B)I
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/h;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
