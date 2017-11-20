.class public final Lcom/google/googlex/glass/common/proto/nano/Permission;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Permission;


# instance fields
.field private bitField0_:I

.field private isAcknowledged_:Z

.field private name_:Ljava/lang/String;

.field private requiresUserAcknowledgement_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Permission;->clear()Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 89
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Permission;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/Permission;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Permission;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/Permission;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Permission;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Permission;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Permission;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    .line 95
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->cachedSize:I

    .line 98
    return-object p0
.end method

.method public clearIsAcknowledged()Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    .line 76
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearRequiresUserAcknowledgement()Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 58
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 159
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    .line 165
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 168
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    .line 169
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/Permission;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/Permission;

    .line 110
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/Permission;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    if-ne v3, v4, :cond_0

    .line 118
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    if-ne v3, v4, :cond_0

    .line 122
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsAcknowledged()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresUserAcknowledgement()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    return v0
.end method

.method public hasIsAcknowledged()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequiresUserAcknowledgement()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 130
    const/16 v0, 0x11

    .line 131
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 132
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 133
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 136
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_2
    add-int v0, v2, v1

    .line 138
    return v0

    :cond_1
    move v1, v3

    .line 133
    goto :goto_0

    :cond_2
    move v2, v3

    .line 134
    goto :goto_1

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 180
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 184
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :sswitch_0
    return-object p0

    .line 190
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 191
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    goto :goto_0

    .line 195
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    .line 196
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    .line 201
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    goto :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/Permission;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/Permission;

    move-result-object v0

    return-object v0
.end method

.method public setIsAcknowledged(Z)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    .line 81
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setRequiresUserAcknowledgement(Z)Lcom/google/googlex/glass/common/proto/nano/Permission;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    .line 63
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
    .line 144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->requiresUserAcknowledgement_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 150
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/Permission;->isAcknowledged_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 153
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 154
    return-void
.end method
