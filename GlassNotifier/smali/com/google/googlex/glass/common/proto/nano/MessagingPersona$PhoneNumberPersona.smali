.class public final Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MessagingPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumberPersona"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;


# instance fields
.field private bitField0_:I

.field private label_:I

.field private phoneCallUsageTimestampMs_:J

.field private phoneNumber_:Ljava/lang/String;

.field private primary_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 111
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 116
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    .line 117
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->cachedSize:I

    .line 121
    return-object p0
.end method

.method public clearLabel()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    .line 66
    return-object p0
.end method

.method public clearPhoneCallUsageTimestampMs()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    .line 98
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 99
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 38
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 39
    return-object p0
.end method

.method public clearPrimary()Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 80
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 190
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 192
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    .line 196
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 199
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    .line 200
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 203
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    .line 204
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    .line 133
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    if-ne v3, v4, :cond_0

    .line 141
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    if-ne v3, v4, :cond_0

    .line 145
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    return v0
.end method

.method public getPhoneCallUsageTimestampMs()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneCallUsageTimestampMs()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 157
    const/16 v0, 0x11

    .line 158
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    add-int v0, v1, v2

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 162
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 164
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 165
    :goto_1
    add-int v0, v2, v1

    .line 166
    return v0

    .line 161
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 215
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1, v1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    :sswitch_0
    return-object p0

    .line 225
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 226
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    goto :goto_0

    .line 230
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 231
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 232
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 241
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 237
    :pswitch_0
    iput v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    .line 238
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    goto :goto_0

    .line 248
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    .line 249
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    goto :goto_0

    .line 253
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    .line 254
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(I)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public setPhoneCallUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    .line 103
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public setPrimary(Z)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    .line 84
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 175
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->label_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 178
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->primary_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 181
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 182
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;->phoneCallUsageTimestampMs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 184
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 185
    return-void
.end method
