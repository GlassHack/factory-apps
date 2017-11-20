.class public final Lcom/google/majel/proto/ActionV2Protos$ActionContact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionContact"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;


# instance fields
.field public address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

.field private bitField0_:I

.field public email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

.field public embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

.field private name_:Ljava/lang/String;

.field private parsedName_:Ljava/lang/String;

.field public phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

.field private relationship_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2706
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2707
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clear()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2708
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 2

    .prologue
    .line 2615
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-nez v0, :cond_1

    .line 2616
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2618
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-nez v0, :cond_0

    .line 2619
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2621
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0

    .line 2621
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2923
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2917
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 2713
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2714
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2715
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2719
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    .line 2720
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2645
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 2646
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2647
    return-object p0
.end method

.method public clearParsedName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2699
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2700
    return-object p0
.end method

.method public clearRelationship()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2677
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2678
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2766
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2767
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2768
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2771
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 2772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 2773
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    aget-object v0, v3, v1

    .line 2774
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    if-eqz v0, :cond_1

    .line 2775
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2772
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2780
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 2781
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 2782
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    aget-object v0, v3, v1

    .line 2783
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    if-eqz v0, :cond_3

    .line 2784
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2781
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2789
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 2790
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2793
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 2794
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 2795
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    aget-object v0, v3, v1

    .line 2796
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    if-eqz v0, :cond_6

    .line 2797
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2794
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2802
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 2803
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2806
    :cond_8
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-eqz v3, :cond_9

    .line 2807
    const v3, 0x2533256

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2810
    :cond_9
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    .line 2811
    return v2
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2642
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParsedName()Z
    .locals 1

    .prologue
    .line 2695
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelationship()Z
    .locals 1

    .prologue
    .line 2673
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

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
    .line 2609
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2819
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2820
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2824
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2825
    :sswitch_0
    return-object p0

    .line 2830
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 2831
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    goto :goto_0

    .line 2835
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2837
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-nez v5, :cond_2

    move v1, v4

    .line 2838
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2840
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    if-eqz v1, :cond_1

    .line 2841
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2843
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2844
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 2845
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2846
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2843
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2837
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    array-length v1, v5

    goto :goto_1

    .line 2849
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 2850
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2851
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    goto :goto_0

    .line 2855
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2857
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-nez v5, :cond_5

    move v1, v4

    .line 2858
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2860
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    if-eqz v1, :cond_4

    .line 2861
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2863
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2864
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    aput-object v5, v2, v1

    .line 2865
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2866
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2863
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2857
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    array-length v1, v5

    goto :goto_3

    .line 2869
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    aput-object v5, v2, v1

    .line 2870
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2871
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    goto/16 :goto_0

    .line 2875
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2876
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    goto/16 :goto_0

    .line 2880
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2882
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    if-nez v5, :cond_8

    move v1, v4

    .line 2883
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2885
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    if-eqz v1, :cond_7

    .line 2886
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2888
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 2889
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    aput-object v5, v2, v1

    .line 2890
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2891
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2888
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2882
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    array-length v1, v5

    goto :goto_5

    .line 2894
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :cond_9
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    aput-object v5, v2, v1

    .line 2895
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2896
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    goto/16 :goto_0

    .line 2900
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2901
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    goto/16 :goto_0

    .line 2905
    :sswitch_7
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-nez v5, :cond_a

    .line 2906
    new-instance v5, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2908
    :cond_a
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2820
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x129992b2 -> :sswitch_7
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2634
    if-nez p1, :cond_0

    .line 2635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2637
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 2638
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2639
    return-object p0
.end method

.method public setParsedName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2687
    if-nez p1, :cond_0

    .line 2688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2690
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2691
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2692
    return-object p0
.end method

.method public setRelationship(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2665
    if-nez p1, :cond_0

    .line 2666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2668
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2669
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    .line 2670
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
    .line 2726
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2727
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2729
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 2730
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2731
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone:[Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    aget-object v0, v2, v1

    .line 2732
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    if-eqz v0, :cond_1

    .line 2733
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2730
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2737
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 2738
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2739
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email:[Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    aget-object v0, v2, v1

    .line 2740
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    if-eqz v0, :cond_3

    .line 2741
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2738
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2745
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .end local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 2746
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2748
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 2749
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2750
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address:[Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    aget-object v0, v2, v1

    .line 2751
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    if-eqz v0, :cond_6

    .line 2752
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2749
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2756
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 2757
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2759
    :cond_8
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    if-eqz v2, :cond_9

    .line 2760
    const v2, 0x2533256

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2762
    :cond_9
    return-void
.end method
