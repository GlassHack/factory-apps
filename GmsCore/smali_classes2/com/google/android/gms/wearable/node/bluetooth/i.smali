.class final Lcom/google/android/gms/wearable/node/bluetooth/i;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/io/OutputStream;

.field final synthetic b:Lcom/google/android/gms/wearable/node/bluetooth/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/g;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    iput-object p2, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 228
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 223
    return-void
.end method

.method public final write(I)V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method

.method public final write([B)V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 207
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method

.method public final write([BII)V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/i;->b:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/k;-><init>(Ljava/io/IOException;B)V

    throw v1
.end method
