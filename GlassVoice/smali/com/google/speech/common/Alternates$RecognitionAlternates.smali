.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionAlternates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates;


# instance fields
.field public slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 873
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->clear()Lcom/google/speech/common/Alternates$RecognitionAlternates;

    .line 874
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 2

    .prologue
    .line 858
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates;

    if-nez v0, :cond_1

    .line 859
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 861
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates;

    if-nez v0, :cond_0

    .line 862
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$RecognitionAlternates;

    sput-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates;

    .line 864
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->_emptyArray:[Lcom/google/speech/common/Alternates$RecognitionAlternates;

    return-object v0

    .line 864
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 952
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 877
    invoke-static {}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->emptyArray()[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    .line 879
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 897
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 898
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 900
    iget-object v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    aget-object v0, v3, v1

    .line 901
    .local v0, "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    if-eqz v0, :cond_0

    .line 902
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 899
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v0    # "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    .line 908
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
    .line 618
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 917
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 921
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 922
    :sswitch_0
    return-object p0

    .line 927
    :sswitch_1
    const/16 v5, 0xb

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 929
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    if-nez v5, :cond_2

    move v1, v4

    .line 930
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 932
    .local v2, "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    if-eqz v1, :cond_1

    .line 933
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 936
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 937
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 938
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 929
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    array-length v1, v5

    goto :goto_1

    .line 941
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    :cond_3
    new-instance v5, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v5}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    aput-object v5, v2, v1

    .line 942
    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;I)V

    .line 943
    iput-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    goto :goto_0

    .line 917
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 886
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot:[Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    aget-object v0, v2, v1

    .line 888
    .local v0, "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    if-eqz v0, :cond_0

    .line 889
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 886
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    .end local v0    # "element":Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
