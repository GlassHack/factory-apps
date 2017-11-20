.class public final Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionFeatureInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionFeatureInfo;


# instance fields
.field private bitField0_:I

.field private isKeyboardTextEntrySupported_:Z

.field private isPhotoSyncEnabled_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7730
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7731
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7736
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 7755
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 7731
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7861
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7855
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public clearIsKeyboardTextEntrySupported()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 7768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 7769
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 7770
    return-object p0
.end method

.method public clearIsPhotoSyncEnabled()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 7749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 7750
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 7751
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7775
    if-ne p1, p0, :cond_1

    .line 7780
    :cond_0
    :goto_0
    return v1

    .line 7776
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7777
    check-cast v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 7778
    .local v0, "other":Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7780
    goto :goto_0

    .line 7778
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7780
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getIsKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 7757
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    return v0
.end method

.method public getIsPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 7738
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7805
    const/4 v0, 0x0

    .line 7806
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7807
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 7808
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7810
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7811
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 7812
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7814
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7815
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->cachedSize:I

    .line 7816
    return v0
.end method

.method public hasIsKeyboardTextEntrySupported()Z
    .locals 1

    .prologue
    .line 7765
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPhotoSyncEnabled()Z
    .locals 1

    .prologue
    .line 7746
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7784
    const/16 v0, 0x11

    .line 7785
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 7786
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 7787
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    add-int v0, v2, v1

    .line 7788
    return v0

    :cond_0
    move v1, v3

    .line 7785
    goto :goto_0

    :cond_1
    move v2, v3

    .line 7786
    goto :goto_1

    .line 7787
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7825
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7829
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7830
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7833
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7835
    :sswitch_0
    return-object p0

    .line 7840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 7841
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 7845
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 7846
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 7825
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 7727
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public setIsKeyboardTextEntrySupported(Z)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7760
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    .line 7761
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 7762
    return-object p0
.end method

.method public setIsPhotoSyncEnabled(Z)Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7741
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    .line 7742
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    .line 7743
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
    .line 7793
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7794
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isPhotoSyncEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7796
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7797
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->isKeyboardTextEntrySupported_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7799
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7801
    return-void
.end method
