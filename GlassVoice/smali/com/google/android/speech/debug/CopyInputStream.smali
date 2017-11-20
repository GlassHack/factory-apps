.class public Lcom/google/android/speech/debug/CopyInputStream;
.super Ljava/io/FilterInputStream;
.source "CopyInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CopyInputStream"


# instance fields
.field private mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    iput-object p2, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 35
    iget-object v0, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 36
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 41
    .local v0, "x":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/debug/CopyInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, "readCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 62
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/debug/CopyInputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
