.class public final Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearchAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9254
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9255
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->clear()Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    .line 9256
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 2

    .prologue
    .line 9243
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    if-nez v0, :cond_1

    .line 9244
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9246
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    if-nez v0, :cond_0

    .line 9247
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    .line 9249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9251
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    return-object v0

    .line 9249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9294
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9288
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1

    .prologue
    .line 9259
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    .line 9260
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
    .line 9237
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9272
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9273
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 9277
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9278
    :pswitch_0
    return-object p0

    .line 9273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 9265
    return-void
.end method
