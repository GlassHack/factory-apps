.class public final Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadNotificationAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12603
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12604
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->clear()Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    .line 12605
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
    .locals 2

    .prologue
    .line 12592
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    if-nez v0, :cond_1

    .line 12593
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12595
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    if-nez v0, :cond_0

    .line 12596
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    .line 12598
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12600
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    return-object v0

    .line 12598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12643
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12637
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
    .locals 1

    .prologue
    .line 12608
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->cachedSize:I

    .line 12609
    return-object p0
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
    .line 12586
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ReadNotificationAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12621
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12622
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 12626
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12627
    :pswitch_0
    return-object p0

    .line 12622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 12614
    return-void
.end method
