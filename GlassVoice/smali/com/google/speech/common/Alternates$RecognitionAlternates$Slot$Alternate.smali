.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;


# instance fields
.field public confidence:F

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 648
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 649
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 2

    .prologue
    .line 630
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    if-nez v0, :cond_1

    .line 631
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    sput-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 636
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0

    .line 636
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text:Ljava/lang/String;

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence:F

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    .line 655
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 667
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 668
    .local v0, "size":I
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 672
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    .line 673
    return v0
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
    .line 624
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 682
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 686
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    :sswitch_0
    return-object p0

    .line 692
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text:Ljava/lang/String;

    goto :goto_0

    .line 696
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence:F

    goto :goto_0

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch
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
    .line 661
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 662
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 663
    return-void
.end method
