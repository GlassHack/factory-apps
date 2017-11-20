.class public final Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineSyncRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;


# instance fields
.field public delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

.field public deviceId:Ljava/lang/String;

.field public insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

.field private select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

.field public update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 35
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    .line 38
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    return-object v0
.end method


# virtual methods
.method public clearSelect()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 29
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    .line 48
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 49
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    .line 50
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 51
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 52
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 53
    goto :goto_0

    .line 48
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 51
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSelect()Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "size":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-eqz v3, :cond_0

    .line 117
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 118
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-eqz v3, :cond_2

    .line 121
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 122
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    if-eqz v0, :cond_1

    .line 123
    const/4 v6, 0x2

    .line 124
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-eqz v3, :cond_4

    .line 129
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 130
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    if-eqz v0, :cond_3

    .line 131
    const/4 v6, 0x3

    .line 132
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-eqz v3, :cond_6

    .line 137
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 138
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    if-eqz v0, :cond_5

    .line 139
    const/4 v5, 0x4

    .line 140
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 137
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 144
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :cond_6
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    .line 145
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->cachedSize:I

    .line 148
    return v1
.end method

.method public hasSelect()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

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

    .line 57
    const/16 v1, 0x11

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 59
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 77
    :cond_2
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_b

    :goto_2
    add-int v1, v2, v3

    .line 79
    return v1

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;->hashCode()I

    move-result v2

    goto :goto_0

    .line 61
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 62
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 62
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;->hashCode()I

    move-result v2

    goto :goto_4

    .line 67
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 68
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 68
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;->hashCode()I

    move-result v2

    goto :goto_6

    .line 73
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 74
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 74
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;->hashCode()I

    move-result v2

    goto :goto_8

    .line 77
    .end local v0    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 78
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 157
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 161
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    :sswitch_0
    return-object p0

    .line 172
    :sswitch_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-nez v5, :cond_2

    .line 173
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 179
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 180
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-nez v5, :cond_4

    move v1, v4

    .line 181
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 182
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-eqz v5, :cond_3

    .line 183
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    .line 186
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 187
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 188
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 189
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    array-length v1, v5

    goto :goto_1

    .line 192
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 193
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 197
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 198
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-nez v5, :cond_7

    move v1, v4

    .line 199
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    .line 200
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-eqz v5, :cond_6

    .line 201
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_6
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    .line 204
    :goto_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 205
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 206
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 207
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 198
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    array-length v1, v5

    goto :goto_3

    .line 210
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 211
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 216
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-nez v5, :cond_a

    move v1, v4

    .line 217
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 218
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-eqz v5, :cond_9

    .line 219
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_9
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    .line 222
    :goto_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_b

    .line 223
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 224
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 216
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :cond_a
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    array-length v1, v5

    goto :goto_5

    .line 228
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :cond_b
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 229
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    .line 22
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->select_:Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Select;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    if-eqz v2, :cond_2

    .line 88
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 89
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    if-eqz v0, :cond_1

    .line 90
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$InsertReplaceOnConflict;
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    if-eqz v2, :cond_4

    .line 95
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->update:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 96
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    if-eqz v0, :cond_3

    .line 97
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Update;
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    if-eqz v2, :cond_6

    .line 102
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 103
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    if-eqz v0, :cond_5

    .line 104
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 102
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$Delete;
    :cond_6
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 111
    return-void
.end method
