.class public final Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LockscreenRecoveryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockscreenRecoveryResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;


# instance fields
.field private bitField0_:I

.field private lockCode_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    .line 119
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    return-object v0
.end method


# virtual methods
.method public clearLockCode()Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    .locals 2

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    .line 138
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    .line 139
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    .line 147
    .local v0, "other":Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 148
    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    .line 148
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getLockCode()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    .line 172
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->cachedSize:I

    .line 176
    return v0
.end method

.method public hasLockCode()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

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
    .locals 6

    .prologue
    .line 152
    const/16 v0, 0x11

    .line 153
    .local v0, "result":I
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 155
    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 185
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 189
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    :sswitch_0
    return-object p0

    .line 200
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    .line 201
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    move-result-object v0

    return-object v0
.end method

.method public setLockCode(J)Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    .line 130
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->lockCode_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 165
    return-void
.end method
