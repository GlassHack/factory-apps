.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenTransitionData"
.end annotation


# static fields
.field public static final SCREEN_ADD_CALENDAR_EVENT_CARD:I = 0x5

.field public static final SCREEN_AT_HOME_POWER_CONTROL_CARD:I = 0x21

.field public static final SCREEN_CALL_MY_VOICEMAIL_CARD:I = 0x2b

.field public static final SCREEN_CONTACT_SELECT_CARD:I = 0x13

.field public static final SCREEN_DEPRECATED_CALL_BUSINESS:I = 0x6

.field public static final SCREEN_DEPRECATED_DIRECTIONS:I = 0x7

.field public static final SCREEN_DEPRECATED_MAP:I = 0x9

.field public static final SCREEN_DEPRECATED_NAVIGATION:I = 0xb

.field public static final SCREEN_DEPRECATED_STREAMING_TEXT:I = 0x3

.field public static final SCREEN_DEPRECATED_WEB_RESULT:I = 0x4

.field public static final SCREEN_DICTIONARY_RESULTS_CARD:I = 0x1d

.field public static final SCREEN_DISPLAY_ANSWER_CARD:I = 0x14

.field public static final SCREEN_DOWNLOAD_APP_CARD:I = 0x29

.field public static final SCREEN_EMAIL_CARD:I = 0x8

.field public static final SCREEN_FLIGHT_RESULT_CARD:I = 0x1a

.field public static final SCREEN_HELP_CARD:I = 0x2a

.field public static final SCREEN_HTML_ANSWER_CARD:I = 0x15

.field public static final SCREEN_IMAGE_CARD:I = 0x16

.field public static final SCREEN_MEDIA_PLAYER_CARD:I = 0xf

.field public static final SCREEN_MESSAGE_EDITOR_CARD:I = 0xa

.field public static final SCREEN_MULTIPLE_LOCAL_RESULTS_CARD:I = 0x19

.field public static final SCREEN_NONE:I = 0x1

.field public static final SCREEN_OPEN_APPLICATION_CARD:I = 0xc

.field public static final SCREEN_OPEN_BOOK_CARD:I = 0x24

.field public static final SCREEN_OPEN_URL_CARD:I = 0xd

.field public static final SCREEN_PHONE_CALL_CONTACT_CARD:I = 0xe

.field public static final SCREEN_PHONE_CALL_NUMBER_CARD:I = 0x20

.field public static final SCREEN_PLAY_MOVIE_CARD:I = 0x23

.field public static final SCREEN_PLAY_MUSIC_CARD:I = 0x22

.field public static final SCREEN_POST_UPDATE_CARD:I = 0x10

.field public static final SCREEN_PUNT_CARD:I = 0x1b

.field public static final SCREEN_RELATIONSHIP_SELECT_CARD:I = 0x27

.field public static final SCREEN_SELF_NOTE_CARD:I = 0x11

.field public static final SCREEN_SETTINGS:I = 0x1c

.field public static final SCREEN_SET_ALARM_CARD:I = 0x12

.field public static final SCREEN_SET_LOCATION_REMINDER_CARD:I = 0x26

.field public static final SCREEN_SHOW_CALENDAR_EVENT_CARD:I = 0x1f

.field public static final SCREEN_SHOW_CONTACT_INFORMATION_CARD:I = 0x25

.field public static final SCREEN_SINGLE_LOCAL_RESULT_CARD:I = 0x18

.field public static final SCREEN_SPEAK_NOW:I = 0x2

.field public static final SCREEN_SPORTS_RESULTS_CARD:I = 0x1e

.field public static final SCREEN_VIDEO_CALL_CARD:I = 0x28

.field public static final SCREEN_WEATHER_CARD:I = 0x17

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;


# instance fields
.field private bitField0_:I

.field private from_:I

.field private to_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5636
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5637
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 5638
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 2

    .prologue
    .line 5585
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    if-nez v0, :cond_1

    .line 5586
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5588
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    if-nez v0, :cond_0

    .line 5589
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 5591
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5593
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    return-object v0

    .line 5591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5711
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5705
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5641
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    .line 5642
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 5643
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 5644
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    .line 5645
    return-object p0
.end method

.method public clearFrom()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    .line 5612
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 5613
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    .line 5614
    return-object p0
.end method

.method public clearTo()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    .line 5631
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 5632
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    .line 5633
    return-object p0
.end method

.method public getFrom()I
    .locals 1

    .prologue
    .line 5601
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5661
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5662
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5663
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5666
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5667
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5670
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    .line 5671
    return v0
.end method

.method public getTo()I
    .locals 1

    .prologue
    .line 5620
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    return v0
.end method

.method public hasFrom()Z
    .locals 1

    .prologue
    .line 5609
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTo()Z
    .locals 1

    .prologue
    .line 5628
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 5534
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5679
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5680
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5684
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5685
    :sswitch_0
    return-object p0

    .line 5690
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 5691
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    goto :goto_0

    .line 5695
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 5696
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    goto :goto_0

    .line 5680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFrom(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5604
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 5605
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    .line 5606
    return-object p0
.end method

.method public setTo(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5623
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 5624
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    .line 5625
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
    .line 5651
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5652
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5654
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5655
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5657
    :cond_1
    return-void
.end method
