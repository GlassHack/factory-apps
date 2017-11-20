.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SemanticAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/SemanticAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationQualifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;


# instance fields
.field private bitField0_:I

.field private nonUserLocation_:Z

.field private preciseLocation_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 791
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 792
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 2

    .prologue
    .line 737
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    if-nez v0, :cond_1

    .line 738
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 743
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    return-object v0

    .line 743
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 895
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 795
    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    .line 796
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    .line 797
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->cachedSize:I

    .line 800
    return-object p0
.end method

.method public clearNonUserLocation()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    .line 760
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    .line 761
    return-object p0
.end method

.method public clearPreciseLocation()Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    .line 779
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    .line 780
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 852
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 853
    .local v0, "size":I
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 854
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    .line 855
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 857
    :cond_0
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 858
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    .line 859
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 861
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 805
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 823
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    instance-of v3, p1, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 811
    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    .line 812
    .local v0, "other":Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    if-ne v3, v4, :cond_0

    .line 816
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    if-ne v3, v4, :cond_0

    .line 820
    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 821
    :cond_2
    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 823
    :cond_4
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getNonUserLocation()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    return v0
.end method

.method public getPreciseLocation()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    return v0
.end method

.method public hasNonUserLocation()Z
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreciseLocation()Z
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 828
    const/16 v0, 0x11

    .line 829
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 830
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 831
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 832
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 833
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 834
    :goto_2
    add-int v0, v2, v1

    .line 835
    return v0

    :cond_1
    move v1, v3

    .line 830
    goto :goto_0

    :cond_2
    move v2, v3

    .line 831
    goto :goto_1

    .line 834
    :cond_3
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 870
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 874
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 875
    :sswitch_0
    return-object p0

    .line 880
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    .line 881
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    goto :goto_0

    .line 885
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    .line 886
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    goto :goto_0

    .line 870
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setNonUserLocation(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    .line 765
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    .line 766
    return-object p0
.end method

.method public setPreciseLocation(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    .line 784
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    .line 785
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
    .line 841
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->nonUserLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 844
    :cond_0
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 845
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$LocationQualifier;->preciseLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 847
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 848
    return-void
.end method
