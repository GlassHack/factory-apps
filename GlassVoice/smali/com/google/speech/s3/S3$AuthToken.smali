.class public final Lcom/google/speech/s3/S3$AuthToken;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation


# static fields
.field public static final USER_ID_TYPE_GAIA:I = 0x1

.field public static final USER_ID_TYPE_ZWIEBACK:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$AuthToken;


# instance fields
.field private bitField0_:I

.field private email_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private token_:Ljava/lang/String;

.field private userIdType_:I

.field private userId_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 807
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clear()Lcom/google/speech/s3/S3$AuthToken;

    .line 808
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$AuthToken;
    .locals 2

    .prologue
    .line 689
    sget-object v0, Lcom/google/speech/s3/S3$AuthToken;->_emptyArray:[Lcom/google/speech/s3/S3$AuthToken;

    if-nez v0, :cond_1

    .line 690
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$AuthToken;->_emptyArray:[Lcom/google/speech/s3/S3$AuthToken;

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$AuthToken;

    sput-object v0, Lcom/google/speech/s3/S3$AuthToken;->_emptyArray:[Lcom/google/speech/s3/S3$AuthToken;

    .line 695
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$AuthToken;->_emptyArray:[Lcom/google/speech/s3/S3$AuthToken;

    return-object v0

    .line 695
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v0, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$AuthToken;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$AuthToken;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 811
    iput v2, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 816
    iput v2, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 817
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    .line 818
    return-object p0
.end method

.method public clearEmail()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 783
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 784
    return-object p0
.end method

.method public clearName()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 720
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 721
    return-object p0
.end method

.method public clearToken()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 742
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 743
    return-object p0
.end method

.method public clearUserId()Lcom/google/speech/s3/S3$AuthToken;
    .locals 2

    .prologue
    .line 760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 761
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 762
    return-object p0
.end method

.method public clearUserIdType()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 802
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 803
    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 843
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 844
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 845
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 849
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 852
    :cond_1
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 853
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    :cond_2
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 857
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    :cond_3
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 861
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 864
    :cond_4
    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    .line 865
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 749
    iget-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    return-wide v0
.end method

.method public getUserIdType()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserIdType()Z
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 679
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$AuthToken;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 874
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 878
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    :sswitch_0
    return-object p0

    .line 884
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 885
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    goto :goto_0

    .line 889
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 890
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    goto :goto_0

    .line 894
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 895
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    goto :goto_0

    .line 899
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 900
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    goto :goto_0

    .line 904
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 905
    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    goto :goto_0

    .line 874
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 775
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 776
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 711
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 712
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 713
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 733
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 734
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 735
    return-object p0
.end method

.method public setUserId(J)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 752
    iput-wide p1, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 753
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 754
    return-object p0
.end method

.method public setUserIdType(I)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 794
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    .line 795
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
    .line 824
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 827
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 828
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 830
    :cond_1
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 831
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 833
    :cond_2
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 834
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 836
    :cond_3
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 837
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 839
    :cond_4
    return-void
.end method
