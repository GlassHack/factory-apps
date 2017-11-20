.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HelpAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction;


# instance fields
.field public feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

.field public introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

.field public title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10784
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10785
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 10786
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 2

    .prologue
    .line 10764
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    if-nez v0, :cond_1

    .line 10765
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10767
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    if-nez v0, :cond_0

    .line 10768
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 10770
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10772
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    return-object v0

    .line 10770
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10900
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10894
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10789
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10790
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10791
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 10792
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    .line 10793
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10817
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 10818
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v3, :cond_0

    .line 10819
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10822
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v3, :cond_1

    .line 10823
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10826
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 10827
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 10828
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    aget-object v0, v3, v1

    .line 10829
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    if-eqz v0, :cond_2

    .line 10830
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10827
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10835
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .end local v1    # "i":I
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    .line 10836
    return v2
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
    .line 10109
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10844
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 10845
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 10849
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10850
    :sswitch_0
    return-object p0

    .line 10855
    :sswitch_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-nez v5, :cond_1

    .line 10856
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10858
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10862
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-nez v5, :cond_2

    .line 10863
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 10865
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10869
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10871
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    if-nez v5, :cond_4

    move v1, v4

    .line 10872
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 10874
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    if-eqz v1, :cond_3

    .line 10875
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10877
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 10878
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    aput-object v5, v2, v1

    .line 10879
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10880
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10877
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10871
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    array-length v1, v5

    goto :goto_1

    .line 10883
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    :cond_5
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    aput-object v5, v2, v1

    .line 10884
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10885
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    goto :goto_0

    .line 10845
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10799
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v2, :cond_0

    .line 10800
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10802
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    if-eqz v2, :cond_1

    .line 10803
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10805
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 10806
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 10807
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature:[Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    aget-object v0, v2, v1

    .line 10808
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    if-eqz v0, :cond_2

    .line 10809
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10806
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10813
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
