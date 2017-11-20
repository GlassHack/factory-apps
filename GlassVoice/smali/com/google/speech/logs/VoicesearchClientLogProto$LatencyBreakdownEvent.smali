.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyBreakdownEvent"
.end annotation


# static fields
.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_END:I = 0x13

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_START:I = 0x12

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESTART_START:I = 0x1b

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_END:I = 0x18

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_START:I = 0x17

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_END:I = 0x16

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_START:I = 0x15

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_END:I = 0x11

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_START:I = 0x10

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_CANCELLED:I = 0x2d

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_DEPRECATED_WEBSEARCH_DISCOVERYSTATE_PEEK:I = 0x2b

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_DEPRECATED_WEBSEARCH_DISCOVERYSTATE_SHOW_ALL:I = 0x2c

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_AUDIO_RECORD_CREATED:I = 0x32

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_AUDIO_ROUTED:I = 0x31

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_DONE:I = 0x36

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_NOISE_SUPPRESSOR_CREATED:I = 0x33

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_RECORDING_STARTED:I = 0x35

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_OPEN_MICROPHONE_RECORDING_STARTED_SYNCED:I = 0x34

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_SEARCH_PLATE_ON_DRAW_START:I = 0x14

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_STARTUP_UI_THREAD_IDLE:I = 0x20

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_END:I = 0x1c

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_START:I = 0x28

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_END:I = 0x1a

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_START:I = 0x19

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_CARD:I = 0x27

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW:I = 0xe

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE:I = 0xf

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLBACK:I = 0xd

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLED_JS:I = 0xc

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_COMMIT:I = 0x4

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_JESR:I = 0xa

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_NONJESR:I = 0xb

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_LOGIN_COMPLETE:I = 0x5

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_JESR:I = 0x6

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_NONJESR:I = 0x7

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_JESR:I = 0x8

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_NONJESR:I = 0x9

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_CANCEL:I = 0x1f

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_END:I = 0x1e

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_START:I = 0x1d

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB:I = 0x1

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST:I = 0x23

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CORPORA_LOAD:I = 0x3

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_ERROR:I = 0x29

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_HANDLE_ACTION:I = 0x26

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END:I = 0x22

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START:I = 0x21

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE:I = 0x2

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECOGNIZE:I = 0x0

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SELECT_ACTION:I = 0x25

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SWITCH_QUERY:I = 0x24

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_TOKEN_FETCH_END:I = 0x2f

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_TOKEN_FETCH_START:I = 0x2e

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_TOKEN_REFUSED:I = 0x30

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;


# instance fields
.field private bitField0_:I

.field private event_:I

.field private offsetMsec_:I

.field private sublatency_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3320
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3321
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 3322
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 2

    .prologue
    .line 3250
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-nez v0, :cond_1

    .line 3251
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3253
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-nez v0, :cond_0

    .line 3254
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 3256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3258
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    return-object v0

    .line 3256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3408
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3402
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3325
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3326
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 3327
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 3328
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 3329
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 3330
    return-object p0
.end method

.method public clearEvent()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    .line 3277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 3278
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3279
    return-object p0
.end method

.method public clearOffsetMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    .line 3296
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 3297
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3298
    return-object p0
.end method

.method public clearSublatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    .line 3315
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 3316
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3317
    return-object p0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 3266
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    return v0
.end method

.method public getOffsetMsec()I
    .locals 1

    .prologue
    .line 3285
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3349
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3350
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3351
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3354
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3355
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3358
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3359
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3362
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 3363
    return v0
.end method

.method public getSublatency()I
    .locals 1

    .prologue
    .line 3304
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .prologue
    .line 3274
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOffsetMsec()Z
    .locals 1

    .prologue
    .line 3293
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSublatency()Z
    .locals 1

    .prologue
    .line 3312
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 3188
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3372
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3376
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3377
    :sswitch_0
    return-object p0

    .line 3382
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 3383
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    goto :goto_0

    .line 3387
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 3388
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    goto :goto_0

    .line 3392
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 3393
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    goto :goto_0

    .line 3372
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setEvent(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3269
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 3270
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3271
    return-object p0
.end method

.method public setOffsetMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3288
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 3289
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3290
    return-object p0
.end method

.method public setSublatency(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3307
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 3308
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    .line 3309
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
    .line 3336
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3337
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3339
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3340
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3342
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3343
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3345
    :cond_2
    return-void
.end method
