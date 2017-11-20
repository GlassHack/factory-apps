.class final Lcom/google/h/a/b/b/an;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/h/a/b/b/ah;

.field private final c:Lcom/google/h/a/b/b/ad;

.field private final d:Lcom/google/h/a/b/b/q;

.field private final e:Lcom/google/h/a/b/b/q;


# direct methods
.method public constructor <init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 535
    iput-object p1, p0, Lcom/google/h/a/b/b/an;->b:Lcom/google/h/a/b/b/ah;

    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 532
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/an;->d:Lcom/google/h/a/b/b/q;

    .line 533
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/an;->c:Lcom/google/h/a/b/b/ad;

    .line 537
    return-void
.end method


# virtual methods
.method public final a(JIF)V
    .locals 6

    .prologue
    .line 541
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0, p4}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    iget v0, v0, Lcom/google/h/a/b/b/q;->d:I

    if-lez v0, :cond_1

    const/4 v0, 0x3

    if-le p3, v0, :cond_1

    float-to-double v0, p4

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    iget-object v4, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    iget-wide v4, v4, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v4, v4

    iget-object v5, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    iget v5, v5, Lcom/google/h/a/b/b/q;->d:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/an;->c:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    .line 550
    :cond_1
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 6

    .prologue
    .line 554
    invoke-static {}, Lcom/google/h/a/b/b/ah;->d()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget v0, p3, Lcom/google/h/a/b/a/b;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 556
    iget-object v1, p0, Lcom/google/h/a/b/b/an;->d:Lcom/google/h/a/b/b/q;

    invoke-virtual {v1, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 557
    iget-object v1, p0, Lcom/google/h/a/b/b/an;->d:Lcom/google/h/a/b/b/q;

    iget-wide v2, v1, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v1, v2

    iget-object v2, p0, Lcom/google/h/a/b/b/an;->d:Lcom/google/h/a/b/b/q;

    iget v2, v2, Lcom/google/h/a/b/b/q;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 558
    float-to-double v2, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    float-to-double v0, v1

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/an;->c:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    .line 562
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->d:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 567
    iget-object v0, p0, Lcom/google/h/a/b/b/an;->e:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 568
    return-void
.end method
