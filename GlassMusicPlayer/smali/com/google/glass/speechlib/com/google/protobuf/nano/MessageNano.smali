.class public abstract Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 2

    .prologue
    .line 128
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
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

.method public static final toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 105
    invoke-virtual {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
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

.method public static final toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 87
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 55
    :cond_0
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->cachedSize:I

    .line 66
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
.end method
