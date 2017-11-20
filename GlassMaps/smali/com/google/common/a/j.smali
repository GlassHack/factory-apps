.class public final Lcom/google/common/a/j;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/j;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/j;

    sput-object v0, Lcom/google/common/a/j;->a:[Lcom/google/common/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 766
    iput v0, p0, Lcom/google/common/a/j;->c:I

    .line 785
    iput v0, p0, Lcom/google/common/a/j;->d:I

    .line 761
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/j;
    .locals 2

    .prologue
    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 855
    sparse-switch v0, :sswitch_data_0

    .line 859
    iget-object v1, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    :sswitch_0
    return-object p0

    .line 870
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/j;->c:I

    .line 871
    iget v0, p0, Lcom/google/common/a/j;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/j;->b:I

    goto :goto_0

    .line 875
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/j;->d:I

    .line 876
    iget v0, p0, Lcom/google/common/a/j;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/j;->b:I

    goto :goto_0

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)Lcom/google/common/a/j;
    .locals 1

    .prologue
    .line 771
    iput p1, p0, Lcom/google/common/a/j;->c:I

    .line 772
    iget v0, p0, Lcom/google/common/a/j;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/j;->b:I

    .line 773
    return-object p0
.end method

.method public final b(I)Lcom/google/common/a/j;
    .locals 1

    .prologue
    .line 790
    iput p1, p0, Lcom/google/common/a/j;->d:I

    .line 791
    iget v0, p0, Lcom/google/common/a/j;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/j;->b:I

    .line 792
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 805
    if-ne p1, p0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/j;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 807
    :cond_2
    check-cast p1, Lcom/google/common/a/j;

    .line 808
    iget v2, p0, Lcom/google/common/a/j;->c:I

    iget v3, p1, Lcom/google/common/a/j;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/j;->d:I

    iget v3, p1, Lcom/google/common/a/j;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 810
    goto :goto_0

    .line 808
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    .line 810
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    iget v1, p0, Lcom/google/common/a/j;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 837
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/j;->c:I

    .line 838
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_0
    iget v1, p0, Lcom/google/common/a/j;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 841
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/a/j;->d:I

    .line 842
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 845
    iput v0, p0, Lcom/google/common/a/j;->cachedSize:I

    .line 846
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 814
    .line 815
    iget v0, p0, Lcom/google/common/a/j;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 816
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/a/j;->d:I

    add-int/2addr v0, v1

    .line 817
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 818
    return v0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/google/common/a/j;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 823
    iget v0, p0, Lcom/google/common/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/j;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 826
    :cond_0
    iget v0, p0, Lcom/google/common/a/j;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 827
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/a/j;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/google/common/a/j;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 831
    return-void
.end method
