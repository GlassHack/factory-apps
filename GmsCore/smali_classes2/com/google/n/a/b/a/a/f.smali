.class public final Lcom/google/n/a/b/a/a/f;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/f;->G:I

    .line 1318
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1431
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 1432
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1433
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1440
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1441
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1444
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1445
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1448
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1449
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1452
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1453
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1456
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/f;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1415
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1417
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1418
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1421
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1423
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1424
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1426
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 1427
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1334
    if-ne p1, p0, :cond_1

    .line 1335
    const/4 v0, 0x1

    .line 1383
    :cond_0
    :goto_0
    return v0

    .line 1337
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/f;

    if-eqz v1, :cond_0

    .line 1340
    check-cast p1, Lcom/google/n/a/b/a/a/f;

    .line 1341
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1342
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1348
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1349
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1355
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1356
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1362
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1363
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1369
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 1370
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1376
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1377
    iget-object v1, p1, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1383
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/f;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 1345
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1352
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1359
    :cond_a
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1366
    :cond_b
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 1373
    :cond_c
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 1380
    :cond_d
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1391
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1393
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1395
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1397
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 1399
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 1401
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/f;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1402
    return v0

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1393
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1395
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 1397
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 1399
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method
