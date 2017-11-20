.class public final Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SidekickClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/geo/sidekick/logs/SidekickClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SidekickOptInEvent"
.end annotation


# static fields
.field public static final ACTION_DECLINE_OPT_IN:I = 0x5

.field public static final ACTION_ERROR_LOADING_ACCOUNTS:I = 0x7

.field public static final ACTION_ERROR_NO_ELIGIBLE_ACCOUNTS:I = 0x8

.field public static final ACTION_ERROR_OPT_IN:I = 0x9

.field public static final ACTION_INTRO_NEXT:I = 0x2

.field public static final ACTION_INTRO_VIEW:I = 0x1

.field public static final ACTION_OPT_IN:I = 0x4

.field public static final ACTION_OPT_IN_VIEW:I = 0x3

.field public static final ACTION_OPT_OUT:I = 0x6

.field public static final ACTIVITY_FIRST_RUN_ACTIVITY:I = 0x1

.field public static final ACTIVITY_SETUP_WIZARD_OPT_IN_ACTIVITY:I = 0x2

.field public static final SOURCE_FIRST_RUN:I = 0x1

.field public static final SOURCE_GET_NOW_PROMO:I = 0x5

.field public static final SOURCE_SETTINGS_MASTER_SWITCH:I = 0x3

.field public static final SOURCE_SETTINGS_SELECT_ACCOUNT:I = 0x4

.field public static final SOURCE_SETUP_WIZARD:I = 0x2

.field public static final SOURCE_VOICE_SEARCH_ADD_REMINDER:I = 0x6

.field public static final SOURCE_VOICE_SEARCH_COMMUNICATION:I = 0x7

.field private static volatile _emptyArray:[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;


# instance fields
.field private action_:I

.field private activity_:I

.field private bitField0_:I

.field private source_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->clear()Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    .line 110
    return-void
.end method

.method public static emptyArray()[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->_emptyArray:[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    if-nez v0, :cond_1

    .line 39
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->_emptyArray:[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    sput-object v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->_emptyArray:[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->_emptyArray:[Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-direct {v0}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    invoke-direct {v0}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 114
    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    .line 115
    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    .line 116
    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->cachedSize:I

    .line 118
    return-object p0
.end method

.method public clearAction()Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    .line 66
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 67
    return-object p0
.end method

.method public clearActivity()Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    .line 85
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 86
    return-object p0
.end method

.method public clearSource()Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    .line 104
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 105
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    return v0
.end method

.method public getActivity()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 138
    .local v0, "size":I
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_0
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_1
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 147
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_2
    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->cachedSize:I

    .line 151
    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActivity()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 160
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 164
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :sswitch_0
    return-object p0

    .line 170
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    .line 171
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    .line 176
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    goto :goto_0

    .line 180
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    .line 181
    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    goto :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    .line 58
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 59
    return-object p0
.end method

.method public setActivity(I)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    .line 77
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public setSource(I)Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    .line 96
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    .line 97
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->activity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 130
    :cond_1
    iget v0, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/geo/sidekick/logs/SidekickClientLogProto$SidekickOptInEvent;->source_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 133
    :cond_2
    return-void
.end method
