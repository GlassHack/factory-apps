.class public final Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions$TokenUnit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;


# instance fields
.field public clientInitialTokens:J

.field public clientLogging:I

.field public deadline:D

.field public deprecated:Z

.field public endUserCredsRequested:Z

.field public failFast:Z

.field public logLevel:I

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I

.field public serverInitialTokens:J

.field public serverLogging:I

.field public tokenUnit:I

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4931
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4932
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 4933
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 4879
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_1

    .line 4880
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4882
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    if-nez v0, :cond_0

    .line 4883
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    .line 4885
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4887
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0

    .line 4885
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5202
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5196
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 4936
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    .line 4937
    iput-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    .line 4938
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 4939
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 4940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 4941
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    .line 4942
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    .line 4943
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    .line 4944
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    .line 4945
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    .line 4946
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 4947
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    .line 4948
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 4949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4950
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->cachedSize:I

    .line 4951
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/16 v6, 0x100

    const/4 v8, 0x2

    .line 5007
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5008
    .local v2, "size":I
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    .line 5009
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    .line 5010
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5012
    :cond_0
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_1

    .line 5013
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    .line 5014
    invoke-static {v8, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5016
    :cond_1
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eqz v3, :cond_2

    .line 5017
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    .line 5018
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5020
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eqz v3, :cond_3

    .line 5021
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    .line 5022
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5024
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5025
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    .line 5026
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5028
    :cond_4
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    if-eq v3, v6, :cond_5

    .line 5029
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    .line 5030
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5032
    :cond_5
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    if-eq v3, v6, :cond_6

    .line 5033
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    .line 5034
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5036
    :cond_6
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 5037
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 5038
    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    .line 5039
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 5041
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    if-eqz v3, :cond_8

    .line 5042
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    .line 5043
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5045
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    if-eqz v3, :cond_9

    .line 5046
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    .line 5047
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5049
    :cond_9
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v3, v8, :cond_a

    .line 5050
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    .line 5051
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5053
    :cond_a
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    if-eqz v3, :cond_b

    .line 5054
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    .line 5055
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5057
    :cond_b
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 5058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 5059
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 5060
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 5061
    const/16 v3, 0x3e7

    .line 5062
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5058
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5066
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5074
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 5075
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5079
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5080
    :sswitch_0
    return-object p0

    .line 5085
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    goto :goto_0

    .line 5089
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    goto :goto_0

    .line 5093
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5094
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5095
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 5101
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5102
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5098
    :pswitch_0
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    goto :goto_0

    .line 5108
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5109
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5110
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 5118
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5119
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5115
    :pswitch_1
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    goto :goto_0

    .line 5125
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    goto :goto_0

    .line 5129
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    goto :goto_0

    .line 5133
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    goto :goto_0

    .line 5137
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    goto :goto_0

    .line 5141
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    goto :goto_0

    .line 5145
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    goto :goto_0

    .line 5149
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5150
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5151
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_2

    .line 5160
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5161
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5157
    :pswitch_2
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    goto/16 :goto_0

    .line 5167
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    goto/16 :goto_0

    .line 5171
    :sswitch_d
    const/16 v7, 0x1f3a

    .line 5172
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5173
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v1, v6

    .line 5174
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 5176
    .local v3, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 5177
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5179
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 5180
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 5181
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5182
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5173
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v7

    goto :goto_1

    .line 5185
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 5186
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5187
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 5075
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x108 -> :sswitch_c
        0x1f3a -> :sswitch_d
    .end sparse-switch

    .line 5095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5110
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 5151
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4867
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 10
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/16 v7, 0x100

    const/4 v6, 0x2

    .line 4957
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 4958
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientInitialTokens:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4960
    :cond_0
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    .line 4961
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverInitialTokens:J

    invoke-virtual {p1, v6, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4963
    :cond_1
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    if-eqz v2, :cond_2

    .line 4964
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->tokenUnit:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4966
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    if-eqz v2, :cond_3

    .line 4967
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4969
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4970
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4972
    :cond_4
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    if-eq v2, v7, :cond_5

    .line 4973
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->clientLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4975
    :cond_5
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    if-eq v2, v7, :cond_6

    .line 4976
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->serverLogging:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4978
    :cond_6
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 4979
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 4980
    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deadline:D

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 4982
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    if-eqz v2, :cond_8

    .line 4983
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->failFast:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4985
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    if-eqz v2, :cond_9

    .line 4986
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->endUserCredsRequested:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4988
    :cond_9
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    if-eq v2, v6, :cond_a

    .line 4989
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->logLevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4991
    :cond_a
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    if-eqz v2, :cond_b

    .line 4992
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4994
    :cond_b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 4995
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 4996
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$StreamOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 4997
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_c

    .line 4998
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4995
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5002
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5003
    return-void
.end method
