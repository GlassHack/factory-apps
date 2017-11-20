.class public final Lcom/google/glass/companion/Proto$NavigationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$NavigationRequest;


# instance fields
.field private bitField0_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3666
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$NavigationRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$NavigationRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$NavigationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3667
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3667
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3767
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3761
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method


# virtual methods
.method public clearUri()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3689
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 3690
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3695
    if-ne p1, p0, :cond_1

    .line 3699
    :cond_0
    :goto_0
    return v1

    .line 3696
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3697
    check-cast v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 3698
    .local v0, "other":Lcom/google/glass/companion/Proto$NavigationRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 3699
    goto :goto_0

    .line 3698
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    .line 3699
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3720
    const/4 v0, 0x0

    .line 3721
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3722
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3723
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3725
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3726
    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->cachedSize:I

    .line 3727
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 3685
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3703
    const/16 v0, 0x11

    .line 3704
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 3705
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 3706
    return v0

    .line 3704
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3705
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3735
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3736
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3740
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    .line 3744
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3746
    :sswitch_0
    return-object p0

    .line 3751
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3752
    iget v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    goto :goto_0

    .line 3736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3663
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3677
    if-nez p1, :cond_0

    .line 3678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3680
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3681
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    .line 3682
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3711
    iget v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3712
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$NavigationRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3716
    return-void
.end method
