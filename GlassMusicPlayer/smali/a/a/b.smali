.class public final La/a/b;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/b;


# instance fields
.field private b:I

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    new-array v0, v0, [La/a/b;

    sput-object v0, La/a/b;->a:[La/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 715
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 720
    iput-wide v0, p0, La/a/b;->c:J

    .line 739
    iput-wide v0, p0, La/a/b;->d:J

    .line 715
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/b;
    .locals 2

    .prologue
    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 804
    sparse-switch v0, :sswitch_data_0

    .line 808
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    :sswitch_0
    return-object p0

    .line 814
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, La/a/b;->c:J

    .line 815
    iget v0, p0, La/a/b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/b;->b:I

    goto :goto_0

    .line 819
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, La/a/b;->d:J

    .line 820
    iget v0, p0, La/a/b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/b;->b:I

    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a(J)La/a/b;
    .locals 1

    .prologue
    .line 725
    iput-wide p1, p0, La/a/b;->c:J

    .line 726
    iget v0, p0, La/a/b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/b;->b:I

    .line 727
    return-object p0
.end method

.method public final b(J)La/a/b;
    .locals 1

    .prologue
    .line 744
    iput-wide p1, p0, La/a/b;->d:J

    .line 745
    iget v0, p0, La/a/b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/b;->b:I

    .line 746
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    if-ne p1, p0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 760
    :cond_1
    instance-of v2, p1, La/a/b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 761
    :cond_2
    check-cast p1, La/a/b;

    .line 762
    iget-wide v2, p0, La/a/b;->c:J

    iget-wide v4, p1, La/a/b;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, La/a/b;->d:J

    iget-wide v4, p1, La/a/b;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    iget v1, p0, La/a/b;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x1

    iget-wide v2, p0, La/a/b;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_0
    iget v1, p0, La/a/b;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 791
    const/4 v1, 0x2

    iget-wide v2, p0, La/a/b;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_1
    iput v0, p0, La/a/b;->cachedSize:I

    .line 795
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 767
    .line 768
    iget-wide v0, p0, La/a/b;->c:J

    iget-wide v2, p0, La/a/b;->c:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 769
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, La/a/b;->d:J

    iget-wide v3, p0, La/a/b;->d:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 770
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0, p1}, La/a/b;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 775
    iget v0, p0, La/a/b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    iget-wide v1, p0, La/a/b;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 778
    :cond_0
    iget v0, p0, La/a/b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 779
    const/4 v0, 0x2

    iget-wide v1, p0, La/a/b;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 781
    :cond_1
    return-void
.end method
