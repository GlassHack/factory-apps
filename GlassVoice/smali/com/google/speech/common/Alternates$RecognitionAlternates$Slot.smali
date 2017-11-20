.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates$RecognitionAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;


# instance fields
.field public alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

.field public firstWord:I

.field public originalPhraseConfidence:F

.field public phraseLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 742
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 743
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 2

    .prologue
    .line 718
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    if-nez v0, :cond_1

    .line 719
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    sput-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 724
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0

    .line 724
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 845
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 746
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord:I

    .line 747
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength:I

    .line 748
    invoke-static {}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->emptyArray()[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence:F

    .line 750
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    .line 751
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 773
    .local v2, "size":I
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 775
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 777
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 778
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 779
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    aget-object v0, v3, v1

    .line 780
    .local v0, "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    if-eqz v0, :cond_0

    .line 781
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 778
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v0    # "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 788
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    .line 789
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
    .line 621
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 798
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 802
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 803
    :sswitch_0
    return-object p0

    .line 808
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord:I

    goto :goto_0

    .line 812
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength:I

    goto :goto_0

    .line 816
    :sswitch_3
    const/16 v5, 0x23

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 818
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    if-nez v5, :cond_2

    move v1, v4

    .line 819
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 821
    .local v2, "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    if-eqz v1, :cond_1

    .line 822
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 825
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 826
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 827
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 818
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    array-length v1, v5

    goto :goto_1

    .line 830
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :cond_3
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    aput-object v5, v2, v1

    .line 831
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 832
    iput-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    goto :goto_0

    .line 836
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence:F

    goto :goto_0

    .line 798
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x23 -> :sswitch_3
        0x3d -> :sswitch_4
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
    .line 757
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 758
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 759
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 760
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    aget-object v0, v2, v1

    .line 762
    .local v0, "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    if-eqz v0, :cond_0

    .line 763
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 760
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 768
    return-void
.end method
