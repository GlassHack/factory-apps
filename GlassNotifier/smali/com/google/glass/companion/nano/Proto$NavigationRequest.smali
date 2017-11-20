.class public final Lcom/google/glass/companion/nano/Proto$NavigationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$NavigationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$NavigationRequest;


# instance fields
.field private bitField0_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3987
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3988
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->clear()Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 3989
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 2

    .prologue
    .line 3950
    sget-object v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v0, :cond_1

    .line 3951
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3953
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v0, :cond_0

    .line 3954
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 3956
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3958
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    return-object v0

    .line 3956
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4080
    new-instance v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4074
    new-instance v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    .line 3993
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3995
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->cachedSize:I

    .line 3996
    return-object p0
.end method

.method public clearUri()Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 3972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3973
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    .line 3974
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4040
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4041
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4042
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 4043
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4045
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4001
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 4015
    :cond_0
    :goto_0
    return v1

    .line 4004
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 4007
    check-cast v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 4008
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 4009
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4012
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4013
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 4015
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 3969
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

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
    .locals 3

    .prologue
    .line 4020
    const/16 v0, 0x11

    .line 4021
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 4022
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 4023
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4024
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 4025
    :goto_0
    add-int v0, v2, v1

    .line 4026
    return v0

    .line 4025
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4054
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4058
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4059
    :sswitch_0
    return-object p0

    .line 4064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 4065
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    goto :goto_0

    .line 4054
    nop

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
    .line 3944
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$NavigationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3977
    if-nez p1, :cond_0

    .line 3978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3980
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    .line 3981
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    .line 3982
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
    .line 4032
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4033
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->uri_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4035
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4036
    return-void
.end method
