.class public final Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "RetentionAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/RetentionAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetentionSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;


# instance fields
.field private bitField0_:I

.field private context_:Ljava/lang/String;

.field private desiredRetention_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 90
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->clear()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    .line 91
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    sput-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->_emptyArray:[Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    .line 95
    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    .line 96
    const-string v0, "*"

    iput-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->cachedSize:I

    .line 99
    return-object p0
.end method

.method public clearContext()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1

    .prologue
    .line 74
    const-string v0, "*"

    iput-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 75
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public clearDesiredRetention()Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    .line 62
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 152
    .local v0, "size":I
    iget v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    .line 154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_0
    iget v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 157
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v3, p1, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    .line 111
    .local v0, "other":Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    iget v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    iget v4, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    if-ne v3, v4, :cond_0

    .line 115
    iget v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    :cond_2
    iget-object v3, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredRetention()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDesiredRetention()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

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
    .locals 3

    .prologue
    .line 127
    const/16 v0, 0x11

    .line 128
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    add-int v0, v1, v2

    .line 130
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 132
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    add-int v0, v2, v1

    .line 134
    return v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 169
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    :sswitch_0
    return-object p0

    .line 179
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 180
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 181
    .local v2, "value":I
    sparse-switch v2, :sswitch_data_1

    .line 199
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 200
    invoke-virtual {p0, p1, v1}, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 195
    :sswitch_2
    iput v2, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    .line 196
    iget v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    goto :goto_0

    .line 206
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 207
    iget v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 181
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x3a -> :sswitch_2
        0x3c -> :sswitch_2
        0x46 -> :sswitch_2
        0x50 -> :sswitch_2
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setContext(Ljava/lang/String;)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    .line 83
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public setDesiredRetention(I)Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    .line 53
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->desiredRetention_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 143
    :cond_0
    iget v0, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protos/datapol/nano/RetentionAnnotations$RetentionSpec;->context_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 146
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 147
    return-void
.end method
