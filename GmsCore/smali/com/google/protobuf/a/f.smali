.class public abstract Lcom/google/protobuf/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
.end method

.method public a([BI)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Lcom/google/protobuf/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/protobuf/a/b;-><init>([BII)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a/b;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    return-object p0

    .line 119
    :catch_0
    move-exception v0

    throw v0

    .line 122
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Lcom/google/protobuf/a/c;)V
.end method

.method public abstract b()I
.end method

.method public final g()[B
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/a/f;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 76
    array-length v1, v0

    :try_start_0
    new-instance v2, Lcom/google/protobuf/a/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lcom/google/protobuf/a/c;-><init>([BII)V

    invoke-virtual {p0, v2}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/c;)V

    iget-object v1, v2, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    iget v1, v2, Lcom/google/protobuf/a/c;->a:I

    iget v2, v2, Lcom/google/protobuf/a/c;->b:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_1
    return-object v0
.end method
