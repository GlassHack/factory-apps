.class public final Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentifyAudio"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 572
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->clear()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 573
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 2

    .prologue
    .line 560
    sget-object v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    if-nez v0, :cond_1

    .line 561
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    .line 566
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1

    .prologue
    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    .line 577
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
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 590
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 594
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    :pswitch_0
    return-object p0

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 582
    return-void
.end method
