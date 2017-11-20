.class public final Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SemanticAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/datapol/nano/SemanticAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qualifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;


# instance fields
.field private autoDeleteWithinWipeout_:Z

.field private bitField0_:I

.field private hasExplicitConsent_:Z

.field private isEncrypted_:Z

.field private isGoogle_:Z

.field private isPartner_:Z

.field private isPublic_:Z

.field private isPublisher_:Z

.field private limitedAccess_:Z

.field private nonUserLocation_:Z

.field private otherUser_:Z

.field private relatedField_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    .line 456
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    if-nez v0, :cond_1

    .line 231
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    sput-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    .line 236
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    sget-object v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->_emptyArray:[Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    invoke-direct {v0}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 460
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    .line 461
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    .line 462
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    .line 463
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    .line 464
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    .line 465
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    .line 466
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    .line 467
    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    .line 468
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    .line 469
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    .line 470
    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->cachedSize:I

    .line 473
    return-object p0
.end method

.method public clearAutoDeleteWithinWipeout()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    .line 443
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 444
    return-object p0
.end method

.method public clearHasExplicitConsent()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    .line 348
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 349
    return-object p0
.end method

.method public clearIsEncrypted()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    .line 367
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 368
    return-object p0
.end method

.method public clearIsGoogle()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    .line 272
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 273
    return-object p0
.end method

.method public clearIsPartner()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    .line 310
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 311
    return-object p0
.end method

.method public clearIsPublic()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    .line 253
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 254
    return-object p0
.end method

.method public clearIsPublisher()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    .line 329
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public clearLimitedAccess()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    .line 424
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 425
    return-object p0
.end method

.method public clearNonUserLocation()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    .line 405
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 406
    return-object p0
.end method

.method public clearOtherUser()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    .line 291
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 292
    return-object p0
.end method

.method public clearRelatedField()Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    .line 386
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 387
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 597
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 598
    .local v0, "size":I
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 599
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    .line 600
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 602
    :cond_0
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 603
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    .line 604
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 606
    :cond_1
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 607
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    .line 608
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 610
    :cond_2
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 611
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    .line 612
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 614
    :cond_3
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 615
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    .line 616
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 618
    :cond_4
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 619
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    .line 620
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 622
    :cond_5
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 623
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    .line 624
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    :cond_6
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 627
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    .line 628
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_7
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 631
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    .line 632
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_8
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 635
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    .line 636
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 638
    :cond_9
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 639
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    .line 640
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 478
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 481
    :cond_1
    instance-of v3, p1, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 484
    check-cast v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    .line 485
    .local v0, "other":Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    if-ne v3, v4, :cond_0

    .line 489
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    if-ne v3, v4, :cond_0

    .line 493
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    if-ne v3, v4, :cond_0

    .line 497
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    if-ne v3, v4, :cond_0

    .line 501
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    if-ne v3, v4, :cond_0

    .line 505
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    if-ne v3, v4, :cond_0

    .line 509
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    if-ne v3, v4, :cond_0

    .line 513
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    if-ne v3, v4, :cond_0

    .line 517
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    if-ne v3, v4, :cond_0

    .line 521
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    if-ne v3, v4, :cond_0

    .line 525
    iget v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    iget-boolean v4, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    if-ne v3, v4, :cond_0

    .line 529
    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 530
    :cond_2
    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAutoDeleteWithinWipeout()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    return v0
.end method

.method public getHasExplicitConsent()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    return v0
.end method

.method public getIsGoogle()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    return v0
.end method

.method public getIsPartner()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    return v0
.end method

.method public getIsPublic()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    return v0
.end method

.method public getIsPublisher()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    return v0
.end method

.method public getLimitedAccess()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    return v0
.end method

.method public getNonUserLocation()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    return v0
.end method

.method public getOtherUser()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    return v0
.end method

.method public getRelatedField()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    return v0
.end method

.method public hasAutoDeleteWithinWipeout()Z
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasExplicitConsent()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsGoogle()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPartner()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPublic()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPublisher()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLimitedAccess()Z
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNonUserLocation()Z
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOtherUser()Z
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRelatedField()Z
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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

    .line 537
    const/16 v0, 0x11

    .line 538
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 539
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 540
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 541
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 542
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 543
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 544
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    add-int v0, v4, v1

    .line 545
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    add-int v0, v4, v1

    .line 546
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    add-int v0, v1, v4

    .line 547
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    add-int v0, v4, v1

    .line 548
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    add-int v0, v4, v1

    .line 549
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    if-eqz v4, :cond_a

    :goto_9
    add-int v0, v1, v2

    .line 550
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 551
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_0
    const/4 v1, 0x0

    .line 552
    :goto_a
    add-int v0, v2, v1

    .line 553
    return v0

    :cond_1
    move v1, v3

    .line 539
    goto :goto_0

    :cond_2
    move v1, v3

    .line 540
    goto :goto_1

    :cond_3
    move v1, v3

    .line 541
    goto :goto_2

    :cond_4
    move v1, v3

    .line 542
    goto :goto_3

    :cond_5
    move v1, v3

    .line 543
    goto :goto_4

    :cond_6
    move v1, v3

    .line 544
    goto :goto_5

    :cond_7
    move v1, v3

    .line 545
    goto :goto_6

    :cond_8
    move v1, v3

    .line 547
    goto :goto_7

    :cond_9
    move v1, v3

    .line 548
    goto :goto_8

    :cond_a
    move v2, v3

    .line 549
    goto :goto_9

    .line 552
    :cond_b
    iget-object v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 651
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 655
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    :sswitch_0
    return-object p0

    .line 661
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    .line 662
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 666
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    .line 667
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 671
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    .line 672
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 676
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    .line 677
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 681
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    .line 682
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 686
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    .line 687
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 691
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    .line 692
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 696
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    .line 697
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto :goto_0

    .line 701
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    .line 702
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto/16 :goto_0

    .line 706
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    .line 707
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto/16 :goto_0

    .line 711
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    .line 712
    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    goto/16 :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public setAutoDeleteWithinWipeout(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    .line 448
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 449
    return-object p0
.end method

.method public setHasExplicitConsent(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    .line 353
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 354
    return-object p0
.end method

.method public setIsEncrypted(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    .line 372
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 373
    return-object p0
.end method

.method public setIsGoogle(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    .line 277
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 278
    return-object p0
.end method

.method public setIsPartner(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    .line 315
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 316
    return-object p0
.end method

.method public setIsPublic(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    .line 258
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 259
    return-object p0
.end method

.method public setIsPublisher(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    .line 334
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public setLimitedAccess(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    .line 429
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 430
    return-object p0
.end method

.method public setNonUserLocation(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    .line 410
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 411
    return-object p0
.end method

.method public setOtherUser(Z)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    .line 296
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 297
    return-object p0
.end method

.method public setRelatedField(I)Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    .line 391
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    .line 392
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
    .line 559
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublic_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 562
    :cond_0
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 563
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isGoogle_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 565
    :cond_1
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 566
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->otherUser_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 568
    :cond_2
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 569
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPartner_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 571
    :cond_3
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 572
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isPublisher_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 574
    :cond_4
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 575
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->hasExplicitConsent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 577
    :cond_5
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 578
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->isEncrypted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 580
    :cond_6
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 581
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->relatedField_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 583
    :cond_7
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 584
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->nonUserLocation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 586
    :cond_8
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 587
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->limitedAccess_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 589
    :cond_9
    iget v0, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 590
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/protos/datapol/nano/SemanticAnnotations$Qualifier;->autoDeleteWithinWipeout_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 592
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 593
    return-void
.end method
