.class public final Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->clear()Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 118
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-nez v0, :cond_1

    .line 80
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->cachedSize:I

    .line 125
    return-object p0
.end method

.method public clearLabel()Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 102
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    .line 103
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 170
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 172
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 137
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

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
    .line 149
    const/16 v0, 0x11

    .line 150
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 151
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 152
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 153
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    add-int v0, v2, v1

    .line 155
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 183
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 187
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    :sswitch_0
    return-object p0

    .line 193
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 194
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    .line 111
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
    .line 161
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 165
    return-void
.end method
