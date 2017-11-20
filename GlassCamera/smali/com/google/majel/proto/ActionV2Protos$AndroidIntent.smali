.class public final Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidIntent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;


# instance fields
.field private action_:Ljava/lang/String;

.field private bitField0_:I

.field private category_:Ljava/lang/String;

.field private data_:Ljava/lang/String;

.field public extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

.field private packageName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13048
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 13049
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->clear()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    .line 13050
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 2

    .prologue
    .line 12944
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    if-nez v0, :cond_1

    .line 12945
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12947
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    if-nez v0, :cond_0

    .line 12948
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    .line 12950
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12952
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    return-object v0

    .line 12950
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13187
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 13181
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1

    .prologue
    .line 13053
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 13054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    .line 13055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    .line 13056
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    .line 13057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    .line 13058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    .line 13059
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->cachedSize:I

    .line 13060
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1

    .prologue
    .line 12974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    .line 12975
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 12976
    return-object p0
.end method

.method public clearCategory()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1

    .prologue
    .line 13043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    .line 13044
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 13045
    return-object p0
.end method

.method public clearData()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1

    .prologue
    .line 12996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    .line 12997
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 12998
    return-object p0
.end method

.method public clearPackageName()Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1

    .prologue
    .line 13021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    .line 13022
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 13023
    return-object p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12960
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13029
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12982
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13007
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 13090
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 13091
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 13092
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13095
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 13096
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13099
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 13100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 13101
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    aget-object v0, v3, v1

    .line 13102
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    if-eqz v0, :cond_2

    .line 13103
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13108
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 13109
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13112
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 13113
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13116
    :cond_5
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->cachedSize:I

    .line 13117
    return v2
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 12971
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 13040
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 12993
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 13018
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 12647
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 13125
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 13126
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 13130
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13131
    :sswitch_0
    return-object p0

    .line 13136
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    .line 13137
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    goto :goto_0

    .line 13141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    .line 13142
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    goto :goto_0

    .line 13146
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 13148
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    if-nez v5, :cond_2

    move v1, v4

    .line 13149
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    .line 13151
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    if-eqz v1, :cond_1

    .line 13152
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13154
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 13155
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;-><init>()V

    aput-object v5, v2, v1

    .line 13156
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13157
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 13154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13148
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    array-length v1, v5

    goto :goto_1

    .line 13160
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;-><init>()V

    aput-object v5, v2, v1

    .line 13161
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13162
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    goto :goto_0

    .line 13166
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    .line 13167
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    goto :goto_0

    .line 13171
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    .line 13172
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    goto/16 :goto_0

    .line 13126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12963
    if-nez p1, :cond_0

    .line 12964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12966
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    .line 12967
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 12968
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13032
    if-nez p1, :cond_0

    .line 13033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13035
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    .line 13036
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 13037
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12985
    if-nez p1, :cond_0

    .line 12986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12988
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    .line 12989
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 12990
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13010
    if-nez p1, :cond_0

    .line 13011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13013
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    .line 13014
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    .line 13015
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
    .line 13066
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 13067
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->action_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13069
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 13070
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->data_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13072
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 13073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 13074
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->extra:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;

    aget-object v0, v2, v1

    .line 13075
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    if-eqz v0, :cond_2

    .line 13076
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 13073
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13080
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent$Extra;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 13081
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13083
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 13084
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->category_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 13086
    :cond_5
    return-void
.end method
