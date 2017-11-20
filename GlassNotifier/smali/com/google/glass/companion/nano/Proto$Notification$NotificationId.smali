.class public final Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;


# instance fields
.field private bitField0_:I

.field private notificationKey_:J

.field private notificationTag_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11052
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11053
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->clear()Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 11054
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 2

    .prologue
    .line 10974
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v0, :cond_1

    .line 10975
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10977
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-nez v0, :cond_0

    .line 10978
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 10980
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10982
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    return-object v0

    .line 10980
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11181
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11175
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 2

    .prologue
    .line 11057
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 11059
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    .line 11060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11062
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->cachedSize:I

    .line 11063
    return-object p0
.end method

.method public clearNotificationKey()Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 2

    .prologue
    .line 11018
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    .line 11019
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11020
    return-object p0
.end method

.method public clearNotificationTag()Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1

    .prologue
    .line 11037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11038
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11039
    return-object p0
.end method

.method public clearPackageName()Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1

    .prologue
    .line 10996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 10997
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 10998
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 11123
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11124
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11125
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 11126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11128
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11129
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    .line 11130
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11132
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 11133
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11136
    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11068
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 11090
    :cond_0
    :goto_0
    return v1

    .line 11071
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 11074
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .line 11075
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 11076
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11079
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 11083
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11084
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11087
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11088
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 11090
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNotificationKey()J
    .locals 2

    .prologue
    .line 11012
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    return-wide v0
.end method

.method public getNotificationTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11031
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10990
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNotificationKey()Z
    .locals 1

    .prologue
    .line 11015
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotificationTag()Z
    .locals 1

    .prologue
    .line 11034
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 10993
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

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
    .locals 7

    .prologue
    .line 11095
    const/16 v0, 0x11

    .line 11096
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 11097
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 11098
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 11099
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 11100
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11101
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 11102
    :goto_0
    add-int v0, v2, v1

    .line 11103
    return v0

    .line 11102
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11145
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11149
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11150
    :sswitch_0
    return-object p0

    .line 11155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 11156
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 11160
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    .line 11161
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 11165
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11166
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    goto :goto_0

    .line 11145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 10968
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationKey(J)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 11023
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    .line 11024
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11025
    return-object p0
.end method

.method public setNotificationTag(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11042
    if-nez p1, :cond_0

    .line 11043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11045
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    .line 11046
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11047
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11001
    if-nez p1, :cond_0

    .line 11002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11004
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    .line 11005
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    .line 11006
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
    .line 11109
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11110
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11112
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11113
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationKey_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11115
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 11116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->notificationTag_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11118
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11119
    return-void
.end method
