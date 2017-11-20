.class public final Lcom/google/android/location/os/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/at;


# instance fields
.field protected a:Lcom/google/android/location/k/f;

.field protected b:Lcom/google/android/location/k/i;

.field protected c:Lcom/google/android/location/k/b;

.field protected d:Lcom/google/android/location/k/d;

.field protected e:Lcom/google/android/location/k/e;

.field protected f:Lcom/google/android/location/k/j;

.field protected g:Lcom/google/android/location/os/ax;

.field protected h:Lcom/google/android/location/os/au;

.field protected i:Lcom/google/android/location/os/e;

.field protected j:Lcom/google/android/location/activity/az;

.field protected k:Lcom/google/android/location/activity/bt;

.field private final m:Lcom/google/android/location/os/as;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/location/os/as;

    invoke-direct {v0}, Lcom/google/android/location/os/as;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->m:Lcom/google/android/location/os/as;

    .line 47
    new-instance v0, Lcom/google/android/location/k/h;

    invoke-direct {v0}, Lcom/google/android/location/k/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->a:Lcom/google/android/location/k/f;

    .line 49
    new-instance v0, Lcom/google/android/location/k/i;

    invoke-direct {v0}, Lcom/google/android/location/k/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->b:Lcom/google/android/location/k/i;

    .line 51
    new-instance v0, Lcom/google/android/location/os/al;

    invoke-direct {v0}, Lcom/google/android/location/os/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->c:Lcom/google/android/location/k/b;

    .line 75
    new-instance v0, Lcom/google/android/location/os/am;

    invoke-direct {v0}, Lcom/google/android/location/os/am;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->d:Lcom/google/android/location/k/d;

    .line 96
    new-instance v0, Lcom/google/android/location/os/an;

    invoke-direct {v0, p0}, Lcom/google/android/location/os/an;-><init>(Lcom/google/android/location/os/ai;)V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->e:Lcom/google/android/location/k/e;

    .line 133
    new-instance v0, Lcom/google/android/location/os/aq;

    invoke-direct {v0}, Lcom/google/android/location/os/aq;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->f:Lcom/google/android/location/k/j;

    .line 162
    new-instance v0, Lcom/google/android/location/os/ar;

    invoke-direct {v0}, Lcom/google/android/location/os/ar;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->g:Lcom/google/android/location/os/ax;

    .line 256
    new-instance v0, Lcom/google/android/location/os/au;

    const-string v1, "null"

    const-string v2, "null"

    const-string v3, "null/null/null"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/os/au;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->h:Lcom/google/android/location/os/au;

    .line 294
    new-instance v0, Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/aj;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/aj;-><init>(Lcom/google/android/location/os/ai;)V

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/location/os/e;-><init>(Lcom/google/android/location/os/ag;Lcom/google/android/location/p/a/b;Ljava/io/PrintWriter;)V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->i:Lcom/google/android/location/os/e;

    .line 301
    new-instance v0, Lcom/google/android/location/activity/ak;

    invoke-direct {v0}, Lcom/google/android/location/activity/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->j:Lcom/google/android/location/activity/az;

    .line 304
    new-instance v0, Lcom/google/android/location/activity/al;

    invoke-direct {v0}, Lcom/google/android/location/activity/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/ai;->k:Lcom/google/android/location/activity/bt;

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/location/os/aw;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/location/os/ai;->m:Lcom/google/android/location/os/as;

    return-object v0
.end method

.method public final B()Lcom/google/android/location/k/f;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/location/os/ai;->a:Lcom/google/android/location/k/f;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ab;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/ay;
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lcom/google/android/location/os/ak;

    invoke-direct {v0}, Lcom/google/android/location/os/ak;-><init>()V

    return-object v0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;JLjava/lang/String;Ljava/lang/Integer;ZLcom/google/g/a/b/b/a;ZLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/google/android/location/os/ap;

    invoke-direct {v0}, Lcom/google/android/location/os/ap;-><init>()V

    return-object v0
.end method

.method public final a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/google/android/location/os/ap;

    invoke-direct {v0}, Lcom/google/android/location/os/ap;-><init>()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public final a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bg;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;)Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public final c()Lcom/google/android/location/k/b;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/location/os/ai;->c:Lcom/google/android/location/k/b;

    return-object v0
.end method

.method public final d()Lcom/google/android/location/k/d;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/location/os/ai;->d:Lcom/google/android/location/k/d;

    return-object v0
.end method

.method public final e()Lcom/google/android/location/k/e;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/location/os/ai;->e:Lcom/google/android/location/k/e;

    return-object v0
.end method

.method public final f()Lcom/google/android/location/k/j;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/location/os/ai;->f:Lcom/google/android/location/k/j;

    return-object v0
.end method

.method public final g()Lcom/google/android/location/os/ax;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/location/os/ai;->g:Lcom/google/android/location/os/ax;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/android/location/os/ah;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/google/android/location/os/ao;

    invoke-direct {v0}, Lcom/google/android/location/os/ao;-><init>()V

    return-object v0
.end method

.method public final j()Lcom/google/android/location/os/au;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/location/os/ai;->h:Lcom/google/android/location/os/au;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string v0, "us"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "us"

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public final n()Ljava/io/File;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()Ljava/io/File;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final p()Ljava/io/File;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 475
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public final v()Lcom/google/android/location/os/e;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/location/os/ai;->i:Lcom/google/android/location/os/e;

    return-object v0
.end method

.method public final w()Lcom/google/android/location/activity/az;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/location/os/ai;->j:Lcom/google/android/location/activity/az;

    return-object v0
.end method

.method public final x()Lcom/google/android/location/activity/bt;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/location/os/ai;->k:Lcom/google/android/location/activity/bt;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method
