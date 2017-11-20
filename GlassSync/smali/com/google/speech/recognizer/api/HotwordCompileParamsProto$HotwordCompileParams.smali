.class public final Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "HotwordCompileParamsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/HotwordCompileParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordCompileParams"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;


# instance fields
.field private bitField0_:I

.field private outputFilenamePrefix_:Ljava/lang/String;

.field public path:[Lcom/google/speech/recognizer/api/Network$PathParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    sput-object v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15
    sget-object v0, Lcom/google/speech/recognizer/api/Network$PathParams;->EMPTY_ARRAY:[Lcom/google/speech/recognizer/api/Network$PathParams;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    return-object v0
.end method


# virtual methods
.method public clearOutputFilenamePrefix()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    instance-of v3, p1, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 44
    .local v0, "other":Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    iget-object v3, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getOutputFilenamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v5, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .local v0, "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 77
    .local v1, "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v1    # "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 82
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 85
    :cond_1
    iput v4, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    .line 86
    return v4
.end method

.method public hasOutputFilenamePrefix()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 49
    const/16 v1, 0x11

    .line 50
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 56
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 57
    return v1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 53
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/Network$PathParams;->hashCode()I

    move-result v2

    goto :goto_2

    .line 56
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 95
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 99
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    :sswitch_0
    return-object p0

    .line 105
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 106
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-nez v5, :cond_2

    move v1, v4

    .line 107
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 108
    .local v2, "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_1
    iput-object v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 112
    :goto_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 113
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    new-instance v6, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v6}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    aput-object v6, v5, v1

    .line 114
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v1, v5

    goto :goto_1

    .line 118
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_3
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    new-instance v6, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v6}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    aput-object v6, v5, v1

    .line 119
    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 123
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/recognizer/api/Network$PathParams;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 124
    iget v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOutputFilenamePrefix(Ljava/lang/String;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 27
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    .line 28
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v4, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v4, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    .local v0, "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 64
    .local v1, "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "arr$":[Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v1    # "element":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget v4, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 68
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 70
    :cond_1
    return-void
.end method
