.class public abstract Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


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
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "msg":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "msg":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v1

    .line 130
    .local v1, "input":Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    return-object p0

    .line 133
    .end local v1    # "input":Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0

    .line 135
    .end local v0    # "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)V
    .locals 4
    .param p0, "msg"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 104
    .local v1, "output":Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    .end local v1    # "output":Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B
    .locals 3
    .param p0, "msg"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    .line 87
    .local v0, "result":[B
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
