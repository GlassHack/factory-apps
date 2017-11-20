.class public final Lcom/google/glass/companion/Proto$Error;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Error;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4879
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Error;

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Error;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4880
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4889
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    .line 4880
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 4967
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Error;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 4961
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4893
    if-ne p1, p0, :cond_1

    .line 4897
    :cond_0
    :goto_0
    return v0

    .line 4894
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 4895
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$Error;

    .line 4896
    iget v2, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Error;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 4897
    goto :goto_0

    .line 4896
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    .line 4897
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 4916
    const/4 v0, 0x0

    .line 4917
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    .line 4918
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4919
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4920
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->cachedSize:I

    .line 4921
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 4901
    .line 4902
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    add-int/lit16 v0, v0, 0x20f

    .line 4903
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 4904
    return v0

    .line 4903
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Error;
    .locals 2

    .prologue
    .line 4929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4930
    sparse-switch v0, :sswitch_data_0

    .line 4934
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 4935
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    .line 4938
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4940
    :sswitch_0
    return-object p0

    .line 4945
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4946
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4949
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    goto :goto_0

    .line 4951
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    goto :goto_0

    .line 4930
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 4876
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Error;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 4909
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$Error;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4910
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4912
    return-void
.end method
