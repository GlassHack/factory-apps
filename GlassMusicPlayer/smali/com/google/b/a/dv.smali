.class public final Lcom/google/b/a/dv;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7593
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7594
    invoke-direct {p0}, Lcom/google/b/a/dv;->a()Lcom/google/b/a/dv;

    .line 7595
    return-void
.end method

.method private a()Lcom/google/b/a/dv;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7598
    iput v0, p0, Lcom/google/b/a/dv;->a:I

    .line 7599
    iput v0, p0, Lcom/google/b/a/dv;->b:I

    .line 7600
    iput v0, p0, Lcom/google/b/a/dv;->c:I

    .line 7601
    iput v0, p0, Lcom/google/b/a/dv;->d:I

    .line 7602
    iput v0, p0, Lcom/google/b/a/dv;->e:I

    .line 7603
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dv;->cachedSize:I

    .line 7604
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dv;
    .locals 1

    .prologue
    .line 7652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7653
    sparse-switch v0, :sswitch_data_0

    .line 7657
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7658
    :sswitch_0
    return-object p0

    .line 7663
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dv;->b:I

    .line 7664
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dv;->a:I

    goto :goto_0

    .line 7668
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dv;->c:I

    .line 7669
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dv;->a:I

    goto :goto_0

    .line 7673
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dv;->d:I

    .line 7674
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/dv;->a:I

    goto :goto_0

    .line 7678
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dv;->e:I

    .line 7679
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/dv;->a:I

    goto :goto_0

    .line 7653
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7626
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7627
    iget v1, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7628
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/dv;->b:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7631
    :cond_0
    iget v1, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7632
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/dv;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7635
    :cond_1
    iget v1, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7636
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/dv;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7639
    :cond_2
    iget v1, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7640
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/dv;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7643
    :cond_3
    iput v0, p0, Lcom/google/b/a/dv;->cachedSize:I

    .line 7644
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7492
    invoke-direct {p0, p1}, Lcom/google/b/a/dv;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7610
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7611
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/dv;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7613
    :cond_0
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7614
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/dv;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7616
    :cond_1
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7617
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/dv;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7619
    :cond_2
    iget v0, p0, Lcom/google/b/a/dv;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7620
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/dv;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7622
    :cond_3
    return-void
.end method
