.class public final Lcom/google/b/a/de;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 596
    invoke-direct {p0}, Lcom/google/b/a/de;->a()Lcom/google/b/a/de;

    .line 597
    return-void
.end method

.method private a()Lcom/google/b/a/de;
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/de;->a:I

    .line 601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->b:Ljava/lang/String;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->c:Ljava/lang/String;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->d:Ljava/lang/String;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->e:Ljava/lang/String;

    .line 605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->f:Ljava/lang/String;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->g:Ljava/lang/String;

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->h:Ljava/lang/String;

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/de;->i:Ljava/lang/String;

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/de;->cachedSize:I

    .line 610
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/de;
    .locals 1

    .prologue
    .line 686
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 687
    sparse-switch v0, :sswitch_data_0

    .line 691
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    :sswitch_0
    return-object p0

    .line 697
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->b:Ljava/lang/String;

    .line 698
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 702
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->c:Ljava/lang/String;

    .line 703
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 707
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->f:Ljava/lang/String;

    .line 708
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 712
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->g:Ljava/lang/String;

    .line 713
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 717
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->d:Ljava/lang/String;

    .line 718
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 722
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->e:Ljava/lang/String;

    .line 723
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 727
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->h:Ljava/lang/String;

    .line 728
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 732
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/de;->i:Ljava/lang/String;

    .line 733
    iget v0, p0, Lcom/google/b/a/de;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/b/a/de;->a:I

    goto :goto_0

    .line 687
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
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 644
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 645
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 646
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/de;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_0
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/de;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 654
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/de;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    .line 658
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/de;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_3
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 662
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/de;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_4
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 666
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/de;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_5
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 670
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/de;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_6
    iget v1, p0, Lcom/google/b/a/de;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 674
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/de;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_7
    iput v0, p0, Lcom/google/b/a/de;->cachedSize:I

    .line 678
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/google/b/a/de;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/de;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/de;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 619
    :cond_0
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 620
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/de;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 622
    :cond_1
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 623
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/de;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 625
    :cond_2
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 626
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/de;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 628
    :cond_3
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 629
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/de;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 631
    :cond_4
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 632
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/de;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 634
    :cond_5
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 635
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/de;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 637
    :cond_6
    iget v0, p0, Lcom/google/b/a/de;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 638
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/de;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 640
    :cond_7
    return-void
.end method
