.class public final Lcom/google/majel/proto/ActionV2Protos$EmailAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailAction"
.end annotation


# static fields
.field public static final ECARD_THEME_BIRTHDAY:I = 0x2

.field public static final ECARD_THEME_NONE:I = 0x0

.field public static final ECARD_THEME_VALENTINE:I = 0x1

.field public static final ECARD_THEME_WINTER_HOLIDAYS:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$EmailAction;


# instance fields
.field private bitField0_:I

.field public bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private body_:Ljava/lang/String;

.field private ecardTheme_:I

.field public subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private subject_:Ljava/lang/String;

.field public toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4696
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4697
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clear()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 4698
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 2

    .prologue
    .line 4611
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    if-nez v0, :cond_1

    .line 4612
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4614
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    if-nez v0, :cond_0

    .line 4615
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 4617
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4619
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    return-object v0

    .line 4617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4852
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4846
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4701
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4702
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactReference;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 4703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 4704
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 4705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 4706
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 4707
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    .line 4708
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    .line 4709
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 4669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 4670
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4671
    return-object p0
.end method

.method public clearEcardTheme()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 4691
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    .line 4692
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4693
    return-object p0
.end method

.method public clearSubject()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 4644
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 4645
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4646
    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4655
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getEcardTheme()I
    .locals 1

    .prologue
    .line 4680
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 4742
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 4743
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 4744
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4747
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4748
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4751
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v3, :cond_2

    .line 4752
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4755
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v3, :cond_3

    .line 4756
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4759
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 4760
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 4761
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    aget-object v0, v3, v1

    .line 4762
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v0, :cond_4

    .line 4763
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4760
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4768
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 4769
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 4772
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    .line 4773
    return v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 4666
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEcardTheme()Z
    .locals 1

    .prologue
    .line 4688
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 4641
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

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
    .line 4599
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4782
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4786
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4787
    :sswitch_0
    return-object p0

    .line 4792
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 4793
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    goto :goto_0

    .line 4797
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 4798
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    goto :goto_0

    .line 4802
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v5, :cond_1

    .line 4803
    new-instance v5, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 4805
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4809
    :sswitch_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v5, :cond_2

    .line 4810
    new-instance v5, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v5}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 4812
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4816
    :sswitch_5
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4818
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v5, :cond_4

    move v1, v4

    .line 4819
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 4821
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v1, :cond_3

    .line 4822
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4824
    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    .line 4825
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    aput-object v5, v2, v1

    .line 4826
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4827
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4824
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4818
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v1, v5

    goto :goto_1

    .line 4830
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_5
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    aput-object v5, v2, v1

    .line 4831
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4832
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    goto/16 :goto_0

    .line 4836
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactReference;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    .line 4837
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    goto/16 :goto_0

    .line 4782
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2a -> :sswitch_2
        0x32 -> :sswitch_3
        0x3a -> :sswitch_4
        0x42 -> :sswitch_5
        0x48 -> :sswitch_6
    .end sparse-switch
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4658
    if-nez p1, :cond_0

    .line 4659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4661
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 4662
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4663
    return-object p0
.end method

.method public setEcardTheme(I)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4683
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    .line 4684
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4685
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4633
    if-nez p1, :cond_0

    .line 4634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4636
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 4637
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    .line 4638
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
    .line 4715
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4716
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4718
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4719
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4721
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v2, :cond_2

    .line 4722
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4724
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v2, :cond_3

    .line 4725
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4727
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 4728
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 4729
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->toCr:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    aget-object v0, v2, v1

    .line 4730
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    if-eqz v0, :cond_4

    .line 4731
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4728
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4735
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactReference;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 4736
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->ecardTheme_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4738
    :cond_6
    return-void
.end method
