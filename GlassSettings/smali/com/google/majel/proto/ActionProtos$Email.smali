.class public final Lcom/google/majel/proto/ActionProtos$Email;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$Email;


# instance fields
.field private bitField0_:I

.field private body_:Ljava/lang/String;

.field public cc:[Lcom/google/majel/proto/ActionProtos$Contact;

.field private subject_:Ljava/lang/String;

.field public to:[Lcom/google/majel/proto/ActionProtos$Contact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 685
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->clear()Lcom/google/majel/proto/ActionProtos$Email;

    .line 686
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$Email;
    .locals 2

    .prologue
    .line 621
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Email;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Email;

    if-nez v0, :cond_1

    .line 622
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Email;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Email;

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$Email;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$Email;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Email;

    .line 627
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Email;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Email;

    return-object v0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Email;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Email;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    .line 690
    invoke-static {}, Lcom/google/majel/proto/ActionProtos$Contact;->emptyArray()[Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    .line 691
    invoke-static {}, Lcom/google/majel/proto/ActionProtos$Contact;->emptyArray()[Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    .line 695
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 680
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    .line 681
    return-object p0
.end method

.method public clearSubject()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 658
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    .line 659
    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 727
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 728
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 729
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 730
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v3, v1

    .line 731
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 732
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 729
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 738
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 739
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v3, v1

    .line 740
    .restart local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_2

    .line 741
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 738
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 747
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 750
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 751
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 754
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    .line 755
    return v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 615
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Email;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 764
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 768
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 769
    :sswitch_0
    return-object p0

    .line 774
    :sswitch_1
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 776
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v5, :cond_2

    move v1, v4

    .line 777
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionProtos$Contact;

    .line 779
    .local v2, "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v1, :cond_1

    .line 780
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 783
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 784
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 785
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 776
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v1, v5

    goto :goto_1

    .line 788
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 789
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 790
    iput-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 794
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_2
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 796
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v5, :cond_5

    move v1, v4

    .line 797
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionProtos$Contact;

    .line 799
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v1, :cond_4

    .line 800
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 803
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 804
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 805
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 796
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v1, v5

    goto :goto_3

    .line 808
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 809
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 810
    iput-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    goto/16 :goto_0

    .line 814
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 815
    iget v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    goto/16 :goto_0

    .line 819
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 820
    iget v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    goto/16 :goto_0

    .line 764
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 671
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 672
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    .line 673
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 650
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    .line 651
    return-object p0
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
    .line 701
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 702
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->to:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v2, v1

    .line 704
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 705
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 702
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 710
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 711
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v2, v1

    .line 712
    .restart local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_2

    .line 713
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 710
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 718
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 720
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 721
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 723
    :cond_5
    return-void
.end method
