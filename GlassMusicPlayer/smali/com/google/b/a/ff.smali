.class public final Lcom/google/b/a/ff;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/eo;

.field public b:Lcom/google/b/a/eo;

.field public c:Lcom/google/b/a/eq;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10704
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10705
    invoke-direct {p0}, Lcom/google/b/a/ff;->a()Lcom/google/b/a/ff;

    .line 10706
    return-void
.end method

.method private a()Lcom/google/b/a/ff;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10709
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    .line 10710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->e:Ljava/lang/String;

    .line 10711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->f:Ljava/lang/String;

    .line 10712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->g:Ljava/lang/String;

    .line 10713
    iput-object v1, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    .line 10714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->h:Ljava/lang/String;

    .line 10715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->i:Ljava/lang/String;

    .line 10716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/ff;->j:Ljava/lang/String;

    .line 10717
    iput-object v1, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    .line 10718
    iput-object v1, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    .line 10719
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/ff;->cachedSize:I

    .line 10720
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ff;
    .locals 1

    .prologue
    .line 10803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10804
    sparse-switch v0, :sswitch_data_0

    .line 10808
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10809
    :sswitch_0
    return-object p0

    .line 10814
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->e:Ljava/lang/String;

    .line 10815
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto :goto_0

    .line 10819
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->h:Ljava/lang/String;

    .line 10820
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto :goto_0

    .line 10824
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    if-nez v0, :cond_1

    .line 10825
    new-instance v0, Lcom/google/b/a/eq;

    invoke-direct {v0}, Lcom/google/b/a/eq;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    .line 10827
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10831
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->g:Ljava/lang/String;

    .line 10832
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto :goto_0

    .line 10836
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->j:Ljava/lang/String;

    .line 10837
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto :goto_0

    .line 10841
    :sswitch_6
    iget-object v0, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    if-nez v0, :cond_2

    .line 10842
    new-instance v0, Lcom/google/b/a/eo;

    invoke-direct {v0}, Lcom/google/b/a/eo;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    .line 10844
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10848
    :sswitch_7
    iget-object v0, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    if-nez v0, :cond_3

    .line 10849
    new-instance v0, Lcom/google/b/a/eo;

    invoke-direct {v0}, Lcom/google/b/a/eo;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    .line 10851
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10855
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->f:Ljava/lang/String;

    .line 10856
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto/16 :goto_0

    .line 10860
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/ff;->i:Ljava/lang/String;

    .line 10861
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/ff;->d:I

    goto/16 :goto_0

    .line 10804
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 10757
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10758
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10759
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/ff;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10762
    :cond_0
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 10763
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/ff;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10766
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    if-eqz v1, :cond_2

    .line 10767
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10770
    :cond_2
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 10771
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/ff;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10774
    :cond_3
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 10775
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/ff;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10778
    :cond_4
    iget-object v1, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    if-eqz v1, :cond_5

    .line 10779
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10782
    :cond_5
    iget-object v1, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    if-eqz v1, :cond_6

    .line 10783
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10786
    :cond_6
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 10787
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/ff;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10790
    :cond_7
    iget v1, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 10791
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/b/a/ff;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10794
    :cond_8
    iput v0, p0, Lcom/google/b/a/ff;->cachedSize:I

    .line 10795
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 10544
    invoke-direct {p0, p1}, Lcom/google/b/a/ff;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 10726
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10727
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/ff;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10729
    :cond_0
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 10730
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/ff;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10732
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    if-eqz v0, :cond_2

    .line 10733
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/ff;->c:Lcom/google/b/a/eq;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10735
    :cond_2
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 10736
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/ff;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10738
    :cond_3
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 10739
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/ff;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10741
    :cond_4
    iget-object v0, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    if-eqz v0, :cond_5

    .line 10742
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/ff;->a:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10744
    :cond_5
    iget-object v0, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    if-eqz v0, :cond_6

    .line 10745
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/ff;->b:Lcom/google/b/a/eo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10747
    :cond_6
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 10748
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/ff;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10750
    :cond_7
    iget v0, p0, Lcom/google/b/a/ff;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 10751
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/b/a/ff;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10753
    :cond_8
    return-void
.end method
