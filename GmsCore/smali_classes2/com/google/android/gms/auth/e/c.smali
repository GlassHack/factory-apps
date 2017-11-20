.class public final Lcom/google/android/gms/auth/e/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1393
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1398
    iput-boolean v2, p0, Lcom/google/android/gms/auth/e/c;->b:Z

    .line 1415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/e/c;->d:Ljava/lang/String;

    .line 1432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/auth/e/c;->f:J

    .line 1449
    iput v2, p0, Lcom/google/android/gms/auth/e/c;->h:I

    .line 1493
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/c;->i:I

    .line 1393
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcom/google/android/gms/auth/e/c;->i:I

    if-gez v0, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/c;->b()I

    .line 1500
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/c;->i:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/e/c;
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->g:Z

    .line 1454
    iput p1, p0, Lcom/google/android/gms/auth/e/c;->h:I

    .line 1455
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/auth/e/c;
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->e:Z

    .line 1437
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/c;->f:J

    .line 1438
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/e/c;
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->c:Z

    .line 1420
    iput-object p1, p0, Lcom/google/android/gms/auth/e/c;->d:Ljava/lang/String;

    .line 1421
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/e/c;
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->a:Z

    .line 1403
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/c;->b:Z

    .line 1404
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 1390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/c;->a(Z)Lcom/google/android/gms/auth/e/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/e/c;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/c;->a(J)Lcom/google/android/gms/auth/e/c;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/c;->a(I)Lcom/google/android/gms/auth/e/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->a:Z

    if-eqz v0, :cond_0

    .line 1480
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1482
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->c:Z

    if-eqz v0, :cond_1

    .line 1483
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/e/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1485
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->e:Z

    if-eqz v0, :cond_2

    .line 1486
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/c;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1488
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/c;->g:Z

    if-eqz v0, :cond_3

    .line 1489
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/auth/e/c;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1491
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 1505
    const/4 v0, 0x0

    .line 1506
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->a:Z

    if-eqz v1, :cond_0

    .line 1507
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->b:Z

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 1510
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->c:Z

    if-eqz v1, :cond_1

    .line 1511
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/e/c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1514
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->e:Z

    if-eqz v1, :cond_2

    .line 1515
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/c;->f:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1518
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/c;->g:Z

    if-eqz v1, :cond_3

    .line 1519
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/e/c;->h:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1522
    :cond_3
    iput v0, p0, Lcom/google/android/gms/auth/e/c;->i:I

    .line 1523
    return v0
.end method
