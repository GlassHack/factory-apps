.class public final La/a/c;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/c;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    new-array v0, v0, [La/a/c;

    sput-object v0, La/a/c;->a:[La/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 558
    iput v0, p0, La/a/c;->c:F

    .line 577
    iput v0, p0, La/a/c;->d:F

    .line 596
    const/4 v0, 0x0

    iput v0, p0, La/a/c;->e:I

    .line 553
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/c;
    .locals 1

    .prologue
    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 670
    sparse-switch v0, :sswitch_data_0

    .line 674
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    :sswitch_0
    return-object p0

    .line 680
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, La/a/c;->c:F

    .line 681
    iget v0, p0, La/a/c;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/c;->b:I

    goto :goto_0

    .line 685
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, La/a/c;->d:F

    .line 686
    iget v0, p0, La/a/c;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/c;->b:I

    goto :goto_0

    .line 690
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, La/a/c;->e:I

    .line 691
    iget v0, p0, La/a/c;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/a/c;->b:I

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    if-ne p1, p0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    instance-of v2, p1, La/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 618
    :cond_2
    check-cast p1, La/a/c;

    .line 619
    iget v2, p0, La/a/c;->c:F

    iget v3, p1, La/a/c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, La/a/c;->d:F

    iget v3, p1, La/a/c;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, La/a/c;->e:I

    iget v3, p1, La/a/c;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    iget v1, p0, La/a/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 649
    const/4 v1, 0x1

    iget v2, p0, La/a/c;->c:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    :cond_0
    iget v1, p0, La/a/c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 653
    const/4 v1, 0x2

    iget v2, p0, La/a/c;->d:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_1
    iget v1, p0, La/a/c;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 657
    const/4 v1, 0x3

    iget v2, p0, La/a/c;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_2
    iput v0, p0, La/a/c;->cachedSize:I

    .line 661
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 625
    .line 626
    iget v0, p0, La/a/c;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 627
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 628
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/c;->e:I

    add-int/2addr v0, v1

    .line 629
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0, p1}, La/a/c;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 634
    iget v0, p0, La/a/c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x1

    iget v1, p0, La/a/c;->c:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 637
    :cond_0
    iget v0, p0, La/a/c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 638
    const/4 v0, 0x2

    iget v1, p0, La/a/c;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 640
    :cond_1
    iget v0, p0, La/a/c;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x3

    iget v1, p0, La/a/c;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 643
    :cond_2
    return-void
.end method
