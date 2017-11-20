.class public final Lcom/google/majel/proto/ActionV2Protos$ActionField;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionField"
.end annotation


# static fields
.field public static final VALUE_CONFIRMATION:I = 0x1

.field public static final VALUE_MESSAGE:I = 0x4

.field public static final VALUE_RECIPIENT:I = 0x2

.field public static final VALUE_RELATIONSHIP_CONFIRMATION:I = 0x6

.field public static final VALUE_REMINDER_TRIGGER:I = 0x5

.field public static final VALUE_SUBJECT:I = 0x3

.field public static final VALUE_UNKNOWN:I = 0x0

.field public static final VALUE_UNKNOWN_CONTACT_NAME:I = 0x7

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1502
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionField;->clear()Lcom/google/majel/proto/ActionV2Protos$ActionField;

    .line 1503
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionField;
    .locals 2

    .prologue
    .line 1490
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionField;

    if-nez v0, :cond_1

    .line 1491
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionField;

    if-nez v0, :cond_0

    .line 1494
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ActionField;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionField;

    .line 1496
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionField;

    return-object v0

    .line 1496
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionField;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionField;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionField;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionField;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionField;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1535
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionField;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionField;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ActionField;
    .locals 1

    .prologue
    .line 1506
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionField;->cachedSize:I

    .line 1507
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
    .line 1474
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionField;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionField;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionField;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1520
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 1524
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    :pswitch_0
    return-object p0

    .line 1520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 1512
    return-void
.end method
