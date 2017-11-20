.class public final Lcom/google/android/gms/checkin/b/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:J

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:J

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1161
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1166
    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->b:Z

    .line 1183
    iput-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->d:J

    .line 1199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    .line 1233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->f:Ljava/lang/String;

    .line 1250
    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->h:Z

    .line 1266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    .line 1299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    .line 1333
    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->t:Z

    .line 1350
    iput-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->v:J

    .line 1367
    iput-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->l:J

    .line 1384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    .line 1401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    .line 1417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    .line 1521
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/c;->w:I

    .line 1161
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1524
    iget v0, p0, Lcom/google/android/gms/checkin/b/c;->w:I

    if-gez v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->b()I

    .line 1528
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/c;->w:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/l;)Lcom/google/android/gms/checkin/b/c;
    .locals 1

    .prologue
    .line 1216
    if-nez p1, :cond_0

    .line 1217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->m:Z

    .line 1389
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    .line 1390
    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/checkin/b/l;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/l;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0, p1}, Lcom/google/android/gms/checkin/b/c;->b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1480
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 1481
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/l;

    .line 1484
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1486
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->c:Z

    if-eqz v0, :cond_2

    .line 1487
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1489
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->e:Z

    if-eqz v0, :cond_3

    .line 1490
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1492
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/d;

    .line 1493
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_1

    .line 1495
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->s:Z

    if-eqz v0, :cond_5

    .line 1496
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->t:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1498
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->u:Z

    if-eqz v0, :cond_6

    .line 1499
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->v:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 1501
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->k:Z

    if-eqz v0, :cond_7

    .line 1502
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/c;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 1504
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->g:Z

    if-eqz v0, :cond_8

    .line 1505
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1507
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1508
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 1510
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->m:Z

    if-eqz v0, :cond_a

    .line 1511
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1513
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->o:Z

    if-eqz v0, :cond_b

    .line 1514
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1516
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1517
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 1519
    :cond_c
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1533
    .line 1534
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->a:Z

    if-eqz v0, :cond_c

    .line 1535
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->b:Z

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 1538
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/l;

    .line 1539
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1541
    goto :goto_1

    .line 1542
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->c:Z

    if-eqz v0, :cond_1

    .line 1543
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/c;->d:J

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1546
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->e:Z

    if-eqz v0, :cond_2

    .line 1547
    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/c;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/d;

    .line 1551
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1553
    goto :goto_2

    .line 1554
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->s:Z

    if-eqz v0, :cond_4

    .line 1555
    const/4 v0, 0x6

    iget-boolean v3, p0, Lcom/google/android/gms/checkin/b/c;->t:Z

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 1558
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->u:Z

    if-eqz v0, :cond_5

    .line 1559
    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/c;->v:J

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    .line 1562
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->k:Z

    if-eqz v0, :cond_6

    .line 1563
    const/16 v0, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/c;->l:J

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    .line 1566
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->g:Z

    if-eqz v0, :cond_7

    .line 1567
    const/16 v0, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/checkin/b/c;->h:Z

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 1572
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1573
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 1575
    goto :goto_3

    .line 1576
    :cond_8
    add-int v0, v2, v3

    .line 1577
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1579
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->m:Z

    if-eqz v2, :cond_9

    .line 1580
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1583
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->o:Z

    if-eqz v2, :cond_b

    .line 1584
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 1589
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1590
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1592
    goto :goto_5

    .line 1593
    :cond_a
    add-int v0, v2, v1

    .line 1594
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1596
    iput v0, p0, Lcom/google/android/gms/checkin/b/c;->w:I

    .line 1597
    return v0

    :cond_b
    move v2, v0

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/checkin/b/c;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1605
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    .line 1606
    sparse-switch v0, :sswitch_data_0

    .line 1610
    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    :sswitch_0
    return-object p0

    .line 1616
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->b:Z

    goto :goto_0

    .line 1620
    :sswitch_2
    new-instance v0, Lcom/google/android/gms/checkin/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/l;-><init>()V

    .line 1621
    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    .line 1622
    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/c;->a(Lcom/google/android/gms/checkin/b/l;)Lcom/google/android/gms/checkin/b/c;

    goto :goto_0

    .line 1626
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->c:Z

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/c;->d:J

    goto :goto_0

    .line 1630
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->f:Ljava/lang/String;

    goto :goto_0

    .line 1634
    :sswitch_5
    new-instance v0, Lcom/google/android/gms/checkin/b/d;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/d;-><init>()V

    .line 1635
    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    .line 1636
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1640
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->t:Z

    goto :goto_0

    .line 1644
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->u:Z

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/c;->v:J

    goto :goto_0

    .line 1648
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->k:Z

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/c;->l:J

    goto :goto_0

    .line 1652
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/c;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->h:Z

    goto :goto_0

    .line 1656
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1660
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    goto/16 :goto_0

    .line 1664
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/c;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    goto/16 :goto_0

    .line 1668
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/c;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    goto/16 :goto_0

    .line 1606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/c;->o:Z

    .line 1406
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    .line 1407
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;
    .locals 1

    .prologue
    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    return-object p0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
