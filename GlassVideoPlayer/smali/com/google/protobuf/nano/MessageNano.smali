.class public abstract Lcom/google/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 128
    .line 129
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    return-object p0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    throw v0

    .line 136
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 159
    new-array v2, v1, [B

    .line 160
    new-array v3, v1, [B

    .line 161
    invoke-static {p0, v2, v0, v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    .line 162
    invoke-static {p1, v3, v0, v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    .line 163
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V
    .locals 3

    .prologue
    .line 102
    .line 103
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 105
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 87
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 66
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
.end method
