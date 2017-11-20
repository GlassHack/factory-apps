.class public final Lcom/google/common/a/f;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/f;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/f;

    sput-object v0, Lcom/google/common/a/f;->a:[Lcom/google/common/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 627
    iput v0, p0, Lcom/google/common/a/f;->c:I

    .line 646
    iput v0, p0, Lcom/google/common/a/f;->d:I

    .line 622
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/f;
    .locals 2

    .prologue
    .line 715
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 716
    sparse-switch v0, :sswitch_data_0

    .line 720
    iget-object v1, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 721
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    :sswitch_0
    return-object p0

    .line 731
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/f;->c:I

    .line 732
    iget v0, p0, Lcom/google/common/a/f;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/f;->b:I

    goto :goto_0

    .line 736
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/f;->d:I

    .line 737
    iget v0, p0, Lcom/google/common/a/f;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/f;->b:I

    goto :goto_0

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 666
    if-ne p1, p0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 667
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 668
    :cond_2
    check-cast p1, Lcom/google/common/a/f;

    .line 669
    iget v2, p0, Lcom/google/common/a/f;->c:I

    iget v3, p1, Lcom/google/common/a/f;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/f;->d:I

    iget v3, p1, Lcom/google/common/a/f;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 671
    goto :goto_0

    .line 669
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    .line 671
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    iget v1, p0, Lcom/google/common/a/f;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 698
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/f;->c:I

    .line 699
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 701
    :cond_0
    iget v1, p0, Lcom/google/common/a/f;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 702
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/a/f;->d:I

    .line 703
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    iput v0, p0, Lcom/google/common/a/f;->cachedSize:I

    .line 707
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 675
    .line 676
    iget v0, p0, Lcom/google/common/a/f;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 677
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/f;->d:I

    add-int/2addr v0, v1

    .line 678
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 679
    return v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/google/common/a/f;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/google/common/a/f;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/f;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 687
    :cond_0
    iget v0, p0, Lcom/google/common/a/f;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 688
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/a/f;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/google/common/a/f;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 692
    return-void
.end method
