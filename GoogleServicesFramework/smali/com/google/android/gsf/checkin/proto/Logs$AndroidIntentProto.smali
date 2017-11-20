.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidIntentProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    }
.end annotation


# instance fields
.field private action_:Ljava/lang/String;

.field private cachedSize:I

.field private dataUri_:Ljava/lang/String;

.field private extra_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z

.field private hasDataUri:Z

.field private hasJavaClass:Z

.field private hasMimeType:Z

.field private javaClass_:Ljava/lang/String;

.field private mimeType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->action_:Ljava/lang/String;

    .line 1342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->dataUri_:Ljava/lang/String;

    .line 1359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->mimeType_:Ljava/lang/String;

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->javaClass_:Ljava/lang/String;

    .line 1392
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    .line 1461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->cachedSize:I

    .line 1193
    return-void
.end method


# virtual methods
.method public addExtra(Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    .prologue
    .line 1409
    if-nez p1, :cond_0

    .line 1410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    return-object p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->action_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1464
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getSerializedSize()I

    .line 1468
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->cachedSize:I

    return v0
.end method

.method public getDataUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->dataUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    return-object v0
.end method

.method public getExtraCount()I
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtraList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->extra_:Ljava/util/List;

    return-object v0
.end method

.method public getJavaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->javaClass_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1473
    const/4 v2, 0x0

    .line 1474
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1475
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1478
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasDataUri()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1479
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getDataUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasMimeType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1483
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1486
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasJavaClass()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1487
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getJavaClass()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1490
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getExtraList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    .line 1491
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1494
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    :cond_4
    iput v2, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->cachedSize:I

    .line 1495
    return v2
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasAction:Z

    return v0
.end method

.method public hasDataUri()Z
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasDataUri:Z

    return v0
.end method

.method public hasJavaClass()Z
    .locals 1

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasJavaClass:Z

    return v0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasMimeType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1504
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1508
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1509
    :sswitch_0
    return-object p0

    .line 1514
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->setAction(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    goto :goto_0

    .line 1518
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->setDataUri(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    goto :goto_0

    .line 1522
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->setMimeType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    goto :goto_0

    .line 1526
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->setJavaClass(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    goto :goto_0

    .line 1530
    :sswitch_5
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;-><init>()V

    .line 1531
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1532
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->addExtra(Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    goto :goto_0

    .line 1504
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasAction:Z

    .line 1330
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->action_:Ljava/lang/String;

    .line 1331
    return-object p0
.end method

.method public setDataUri(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasDataUri:Z

    .line 1347
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->dataUri_:Ljava/lang/String;

    .line 1348
    return-object p0
.end method

.method public setJavaClass(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasJavaClass:Z

    .line 1381
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->javaClass_:Ljava/lang/String;

    .line 1382
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasMimeType:Z

    .line 1364
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->mimeType_:Ljava/lang/String;

    .line 1365
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1445
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasDataUri()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1448
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getDataUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasMimeType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1451
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1453
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasJavaClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1454
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getJavaClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1456
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getExtraList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    .line 1457
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1459
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    :cond_4
    return-void
.end method
