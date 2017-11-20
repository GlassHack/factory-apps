.class public final Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenApplicationAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;


# instance fields
.field public argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

.field private bitField0_:I

.field private dEPRECATEDHighConfidenceInterpretation_:Z

.field private initialAction_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5179
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 5180
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 5181
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 2

    .prologue
    .line 5100
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    if-nez v0, :cond_1

    .line 5101
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5103
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    if-nez v0, :cond_0

    .line 5104
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 5106
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5108
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    return-object v0

    .line 5106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5305
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5299
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 5184
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 5186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 5187
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 5188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 5189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    .line 5190
    return-object p0
.end method

.method public clearDEPRECATEDHighConfidenceInterpretation()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 5174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 5175
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5176
    return-object p0
.end method

.method public clearInitialAction()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 5152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 5153
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5154
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 5130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 5131
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5132
    return-object p0
.end method

.method public getDEPRECATEDHighConfidenceInterpretation()Z
    .locals 1

    .prologue
    .line 5163
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    return v0
.end method

.method public getInitialAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5138
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5116
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 5217
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 5218
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5219
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5222
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5223
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5226
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 5227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 5228
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    aget-object v0, v3, v1

    .line 5229
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    if-eqz v0, :cond_2

    .line 5230
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5227
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5235
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 5236
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5239
    :cond_4
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    .line 5240
    return v2
.end method

.method public hasDEPRECATEDHighConfidenceInterpretation()Z
    .locals 1

    .prologue
    .line 5171
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitialAction()Z
    .locals 1

    .prologue
    .line 5149
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 5127
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

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
    .line 4856
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 5249
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 5253
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5254
    :sswitch_0
    return-object p0

    .line 5259
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 5260
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    goto :goto_0

    .line 5264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 5265
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    goto :goto_0

    .line 5269
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5271
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    if-nez v5, :cond_2

    move v1, v4

    .line 5272
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 5274
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    if-eqz v1, :cond_1

    .line 5275
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5277
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 5278
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    aput-object v5, v2, v1

    .line 5279
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5280
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5271
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    array-length v1, v5

    goto :goto_1

    .line 5283
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    aput-object v5, v2, v1

    .line 5284
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5285
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 5289
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 5290
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    goto :goto_0

    .line 5249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDEPRECATEDHighConfidenceInterpretation(Z)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 5166
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    .line 5167
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5168
    return-object p0
.end method

.method public setInitialAction(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5141
    if-nez p1, :cond_0

    .line 5142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5144
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 5145
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5146
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5119
    if-nez p1, :cond_0

    .line 5120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5122
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 5123
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    .line 5124
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
    .line 5196
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5197
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5199
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5200
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5202
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 5203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 5204
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    aget-object v0, v2, v1

    .line 5205
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    if-eqz v0, :cond_2

    .line 5206
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 5203
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5210
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 5211
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->dEPRECATEDHighConfidenceInterpretation_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5213
    :cond_4
    return-void
.end method
