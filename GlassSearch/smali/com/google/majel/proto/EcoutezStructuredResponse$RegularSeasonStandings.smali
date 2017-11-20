.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegularSeasonStandings"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;


# instance fields
.field private associationName_:Ljava/lang/String;

.field private associationStanding_:Ljava/lang/String;

.field private bitField0_:I

.field private points_:I

.field public record:[I

.field private winPercentage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9749
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9750
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 9751
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 2

    .prologue
    .line 9648
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    if-nez v0, :cond_1

    .line 9649
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9651
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    if-nez v0, :cond_0

    .line 9652
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 9654
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9656
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    return-object v0

    .line 9654
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9906
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9900
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9754
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 9756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 9757
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 9758
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    .line 9759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 9760
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    .line 9761
    return-object p0
.end method

.method public clearAssociationName()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 9678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 9679
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9680
    return-object p0
.end method

.method public clearAssociationStanding()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 9700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 9701
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9702
    return-object p0
.end method

.method public clearPoints()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 9719
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 9720
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9721
    return-object p0
.end method

.method public clearWinPercentage()Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1

    .prologue
    .line 9744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 9745
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9746
    return-object p0
.end method

.method public getAssociationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9664
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationStanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9686
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 9708
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 9788
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 9789
    .local v3, "size":I
    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 9790
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 9793
    :cond_0
    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 9794
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 9797
    :cond_1
    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 9798
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 9801
    :cond_2
    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 9802
    const/4 v0, 0x0

    .line 9803
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 9804
    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    aget v1, v4, v2

    .line 9805
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 9803
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9808
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    .line 9809
    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 9811
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 9812
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 9815
    :cond_5
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->cachedSize:I

    .line 9816
    return v3
.end method

.method public getWinPercentage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9730
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssociationName()Z
    .locals 1

    .prologue
    .line 9675
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAssociationStanding()Z
    .locals 1

    .prologue
    .line 9697
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoints()Z
    .locals 1

    .prologue
    .line 9716
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWinPercentage()Z
    .locals 1

    .prologue
    .line 9741
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 9642
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 9824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 9825
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 9829
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 9830
    :sswitch_0
    return-object p0

    .line 9835
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 9836
    iget v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    goto :goto_0

    .line 9840
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 9841
    iget v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    goto :goto_0

    .line 9845
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 9846
    iget v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    goto :goto_0

    .line 9850
    :sswitch_4
    const/16 v8, 0x20

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9852
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 9853
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 9854
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 9855
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9857
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 9858
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 9859
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9857
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9852
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v1, v8

    goto :goto_1

    .line 9862
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 9863
    iput-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    goto :goto_0

    .line 9867
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 9868
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 9870
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 9871
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 9872
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 9873
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 9874
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9876
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 9877
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 9878
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 9879
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 9880
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9882
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 9883
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 9882
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 9877
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v1, v8

    goto :goto_4

    .line 9885
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    .line 9886
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 9890
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 9891
    iget v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    goto/16 :goto_0

    .line 9825
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public setAssociationName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9667
    if-nez p1, :cond_0

    .line 9668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9670
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    .line 9671
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9672
    return-object p0
.end method

.method public setAssociationStanding(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9689
    if-nez p1, :cond_0

    .line 9690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9692
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    .line 9693
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9694
    return-object p0
.end method

.method public setPoints(I)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9711
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    .line 9712
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9713
    return-object p0
.end method

.method public setWinPercentage(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9733
    if-nez p1, :cond_0

    .line 9734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9736
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    .line 9737
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    .line 9738
    return-object p0
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
    .line 9767
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9768
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9770
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9771
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->associationStanding_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9773
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 9774
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->points_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9776
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 9777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 9778
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->record:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9781
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 9782
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;->winPercentage_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9784
    :cond_4
    return-void
.end method
