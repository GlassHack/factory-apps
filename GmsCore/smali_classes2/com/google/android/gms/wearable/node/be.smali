.class public final Lcom/google/android/gms/wearable/node/be;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/InputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/wearable/node/bb;->b(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/wearable/node/be;->a(Ljava/io/InputStream;[BI)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 90
    const-string v1, "wearable"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reading message of length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/wearable/node/be;->a(Ljava/io/InputStream;[BI)V

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    invoke-static {p2, v1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 96
    add-int/lit8 v0, v0, 0x4

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/wearable/node/bb;->b(Z)V

    .line 98
    invoke-virtual {p3, v0}, Lcom/google/android/gms/wearable/node/bb;->b(I)V

    .line 99
    return v0
.end method

.method public static a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/android/gms/wearable/node/bb;->a(Z)V

    .line 117
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/c/n;->e()I

    move-result v0

    .line 118
    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;I)V

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    invoke-static {p2, v1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;[BI)V

    .line 120
    const-string v1, "wearable"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending message of length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/bf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    add-int/lit8 v0, v0, 0x4

    .line 126
    invoke-virtual {p3, v4}, Lcom/google/android/gms/wearable/node/bb;->a(Z)V

    .line 127
    invoke-virtual {p3, v0}, Lcom/google/android/gms/wearable/node/bb;->a(I)V

    .line 128
    return v0
.end method

.method public static a(Lcom/google/android/gms/wearable/c/n;)Lcom/google/android/gms/wearable/c/m;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/wearable/c/m;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 136
    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/gms/wearable/c/m;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 154
    iget-object v0, v0, Lcom/google/android/gms/wearable/c/n;->a:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 155
    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 158
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 159
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 160
    iget-object v0, v0, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 163
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 164
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/c/n;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    new-instance v0, Lcom/google/android/gms/wearable/c/n;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/n;-><init>()V

    .line 175
    invoke-static {p0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/n;->a:[B

    .line 176
    iget-object v1, v0, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/m;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    .line 177
    iput v2, v0, Lcom/google/android/gms/wearable/c/n;->c:I

    .line 178
    iput v2, v0, Lcom/google/android/gms/wearable/c/n;->d:I

    .line 179
    return-object v0
.end method

.method public static a()Lcom/google/android/gms/wearable/node/bf;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/gms/wearable/node/bf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/node/bf;-><init>(B)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/c/m;I)Ljava/util/List;
    .locals 8

    .prologue
    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-static {p0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v3

    .line 194
    invoke-static {v3}, Lcom/google/android/gms/wearable/node/m;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 196
    const/4 v0, 0x0

    :goto_0
    mul-int v1, v0, p1

    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 197
    new-instance v5, Lcom/google/android/gms/wearable/c/n;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/c/n;-><init>()V

    .line 198
    add-int/lit8 v1, v0, 0x1

    iput v1, v5, Lcom/google/android/gms/wearable/c/n;->c:I

    .line 199
    iput-object v4, v5, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    .line 200
    mul-int v6, v0, p1

    .line 201
    add-int v1, v6, p1

    .line 202
    array-length v7, v3

    if-le v1, v7, :cond_0

    array-length v1, v3

    .line 203
    :cond_0
    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/gms/wearable/c/n;->a:[B

    .line 204
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/n;

    .line 208
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/wearable/c/n;->d:I

    goto :goto_1

    .line 210
    :cond_2
    return-object v2
.end method

.method private static a(Lcom/google/android/gms/wearable/node/bf;I)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 104
    :cond_0
    int-to-float v0, p1

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureBuffersHaveSpace: increasing size from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bf;->b:[B

    .line 111
    :cond_2
    return-void
.end method

.method private static a(Ljava/io/InputStream;[BI)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    if-ge v0, p2, :cond_1

    .line 77
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 78
    if-gtz v1, :cond_0

    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    add-int/2addr v0, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public static b(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-eqz v1, :cond_0

    const-string v1, "connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "setDataItem["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    iget-object v2, v2, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/wearable/c/n;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    const-string v0, "MessagePiece: queueId=%d digest=%s len=%d piece=%d of %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
