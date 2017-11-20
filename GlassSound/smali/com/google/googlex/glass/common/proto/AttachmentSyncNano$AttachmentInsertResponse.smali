.class public final Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentSyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentSyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;


# instance fields
.field private attachmentId_:Ljava/lang/String;

.field private bitField0_:I

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 814
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 952
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    return-object v0
.end method


# virtual methods
.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 860
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 861
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 838
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 839
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 866
    if-ne p1, p0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 868
    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    .line 869
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 870
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 871
    goto :goto_0

    .line 869
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    .line 871
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 898
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 899
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 902
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 903
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 906
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->cachedSize:I

    .line 907
    return v0
.end method

.method public hasAttachmentId()Z
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

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

    .line 875
    const/16 v0, 0x11

    .line 876
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    add-int/lit16 v0, v1, 0x20f

    .line 877
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 878
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 879
    return v0

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 916
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 920
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    :sswitch_0
    return-object p0

    .line 931
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 932
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 934
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 935
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    goto :goto_0

    .line 937
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    goto :goto_0

    .line 942
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 943
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    goto :goto_0

    .line 916
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 810
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 852
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 853
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 829
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 830
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 831
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
    .line 884
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 887
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 888
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 892
    return-void
.end method
