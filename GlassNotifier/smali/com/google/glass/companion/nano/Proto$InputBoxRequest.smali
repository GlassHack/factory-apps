.class public final Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$InputBoxRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;


# instance fields
.field private bitField0_:I

.field private dismissInputBox_:Z

.field private handlerObject_:[B

.field private hintText_:Ljava/lang/String;

.field private inputType_:I

.field private summaryText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6919
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6920
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->clear()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 6921
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 2

    .prologue
    .line 6800
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v0, :cond_1

    .line 6801
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6803
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v0, :cond_0

    .line 6804
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 6806
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6808
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    return-object v0

    .line 6806
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7084
    new-instance v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7078
    new-instance v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6924
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6925
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6926
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    .line 6927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6929
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6931
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->cachedSize:I

    .line 6932
    return-object p0
.end method

.method public clearDismissInputBox()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6823
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6824
    return-object p0
.end method

.method public clearHandlerObject()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6904
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6905
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6906
    return-object p0
.end method

.method public clearHintText()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6883
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6884
    return-object p0
.end method

.method public clearInputType()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6841
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    .line 6842
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6843
    return-object p0
.end method

.method public clearSummaryText()Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 6860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6861
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6862
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7008
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7009
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7010
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 7011
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7013
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7014
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    .line 7015
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7017
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7018
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 7019
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7021
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7022
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 7023
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7025
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 7026
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 7027
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 7029
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6937
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 6967
    :cond_0
    :goto_0
    return v1

    .line 6940
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 6943
    check-cast v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 6944
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-ne v3, v4, :cond_0

    .line 6948
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    if-ne v3, v4, :cond_0

    .line 6952
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6953
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6956
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6957
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6960
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6961
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6964
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6965
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 6967
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDismissInputBox()Z
    .locals 1

    .prologue
    .line 6816
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    return v0
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 6898
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6876
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 6835
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    return v0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6854
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismissInputBox()Z
    .locals 1

    .prologue
    .line 6819
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 6901
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHintText()Z
    .locals 1

    .prologue
    .line 6879
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 6838
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSummaryText()Z
    .locals 1

    .prologue
    .line 6857
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 6972
    const/16 v0, 0x11

    .line 6973
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 6974
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 6975
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    add-int v0, v1, v2

    .line 6976
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 6977
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 6978
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 6979
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6980
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 6981
    :goto_1
    add-int v0, v2, v1

    .line 6982
    return v0

    .line 6974
    :cond_1
    const/16 v1, 0x4d5

    goto :goto_0

    .line 6981
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7038
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7042
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7043
    :sswitch_0
    return-object p0

    .line 7048
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 7049
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 7053
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    .line 7054
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 7058
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 7059
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 7063
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 7064
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 7068
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 7069
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 7038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6794
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDismissInputBox(Z)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6827
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 6828
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6829
    return-object p0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 6909
    if-nez p1, :cond_0

    .line 6910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6912
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    .line 6913
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6914
    return-object p0
.end method

.method public setHintText(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6887
    if-nez p1, :cond_0

    .line 6888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6890
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 6891
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6892
    return-object p0
.end method

.method public setInputType(I)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6846
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    .line 6847
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6848
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$InputBoxRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6865
    if-nez p1, :cond_0

    .line 6866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6868
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 6869
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    .line 6870
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6988
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6989
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->dismissInputBox_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6991
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6992
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6994
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6995
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6997
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6998
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7000
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7001
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 7003
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7004
    return-void
.end method
