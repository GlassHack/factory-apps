.class public final Lcom/google/glass/companion/Proto$GlassFeatureInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassFeatureInfo;


# instance fields
.field private bitField0_:I

.field private isWallpaperFeatureEnabled_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7386
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7387
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7387
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7484
    new-instance v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7478
    new-instance v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public final clearIsWallpaperFeatureEnabled()Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7406
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7407
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7412
    if-ne p1, p0, :cond_1

    .line 7416
    :cond_0
    :goto_0
    return v0

    .line 7413
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7414
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 7415
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    iget-boolean v3, p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 7416
    goto :goto_0

    .line 7415
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7416
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getIsWallpaperFeatureEnabled()Z
    .locals 1

    .prologue
    .line 7394
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 7437
    const/4 v0, 0x0

    .line 7438
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7439
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7440
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7442
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7443
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->cachedSize:I

    .line 7444
    return v0
.end method

.method public final hasIsWallpaperFeatureEnabled()Z
    .locals 1

    .prologue
    .line 7402
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 7420
    .line 7421
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 7422
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 7423
    return v0

    .line 7421
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 7422
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 2

    .prologue
    .line 7452
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7453
    sparse-switch v0, :sswitch_data_0

    .line 7457
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7461
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7463
    :sswitch_0
    return-object p0

    .line 7468
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7469
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 7453
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 7383
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setIsWallpaperFeatureEnabled(Z)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7397
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7398
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7399
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 7428
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7429
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7431
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7433
    return-void
.end method
