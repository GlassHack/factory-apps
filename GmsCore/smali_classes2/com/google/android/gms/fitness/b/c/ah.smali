.class public final Lcom/google/android/gms/fitness/b/c/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# instance fields
.field final a:Lcom/google/android/gms/fitness/b/b;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/fitness/b/b;FFFFFF)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/ah;->i:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/ah;->j:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->h:Z

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/fitness/b/c/ah;->a:Lcom/google/android/gms/fitness/b/b;

    .line 63
    iput p4, p0, Lcom/google/android/gms/fitness/b/c/ah;->b:F

    .line 64
    iput p5, p0, Lcom/google/android/gms/fitness/b/c/ah;->c:F

    .line 65
    iput p6, p0, Lcom/google/android/gms/fitness/b/c/ah;->d:F

    .line 66
    iput p7, p0, Lcom/google/android/gms/fitness/b/c/ah;->e:F

    .line 67
    iput p8, p0, Lcom/google/android/gms/fitness/b/c/ah;->f:F

    .line 68
    iput p9, p0, Lcom/google/android/gms/fitness/b/c/ah;->g:F

    .line 69
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/b/c;JJLcom/google/android/gms/fitness/b/p;)Lcom/google/android/gms/fitness/b/c;
    .locals 7

    .prologue
    .line 242
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v0

    .line 243
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 244
    sub-long v4, p3, p1

    long-to-float v1, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 246
    invoke-interface {p5}, Lcom/google/android/gms/fitness/b/p;->c()Lcom/google/android/gms/fitness/b/d;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p3, p4, v3}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/c;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v2

    .line 250
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    .line 251
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/d;->b()Lcom/google/android/gms/fitness/b/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Iterator;)Lcom/google/android/gms/fitness/b/c;
    .locals 3

    .prologue
    .line 331
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    .line 333
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/j;

    .line 334
    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v1

    .line 335
    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 343
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;
    .locals 2

    .prologue
    .line 396
    const-string v0, "com.google.step_count.delta"

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "estimated_steps"

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/ah;->a:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/fitness/b/q;Lcom/google/android/gms/fitness/b/h;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;
    .locals 2

    .prologue
    .line 108
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    .line 113
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;
    .locals 3

    .prologue
    .line 369
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/o;

    .line 370
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/r;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/fitness/b/c/ai;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/fitness/b/c/ai;-><init>(Lcom/google/android/gms/fitness/b/c/ah;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/b/c/ah;->h:Z

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/b/s;->e:Z

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;)V
    .locals 4

    .prologue
    .line 360
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/c;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    .line 365
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;Ljava/util/List;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    if-nez p2, :cond_1

    .line 263
    invoke-static {p1, p3}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/List;)V

    .line 267
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 268
    return-void

    .line 265
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    const-string v0, "Empty segment"

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne v4, v0, :cond_4

    move v3, v2

    :cond_4
    if-eqz v3, :cond_5

    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->d:F

    move v2, v0

    :goto_2
    if-eqz v3, :cond_6

    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->e:F

    :goto_3
    long-to-float v5, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v1, v5

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_7

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_7

    invoke-static {p1, p3}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->b:F

    move v2, v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->c:F

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cadence ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outside of range.  Using default."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    if-eqz v3, :cond_8

    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->g:F

    :goto_4
    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/google/android/gms/fitness/b/c/ah;->f:F

    goto :goto_4
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 353
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    .line 355
    invoke-static {p0, v0}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    .line 348
    invoke-static {p0, v0}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;Ljava/util/ListIterator;Lcom/google/android/gms/fitness/b/c;J)V
    .locals 7

    .prologue
    .line 230
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-object v1, p2

    move-wide v4, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/c;JJLcom/google/android/gms/fitness/b/p;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 232
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    move-object v1, p2

    move-wide v2, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/c;JJLcom/google/android/gms/fitness/b/p;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "com.google.step_count.delta"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 386
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 16

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 79
    const-string v2, "com.google.step_count.delta"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;

    move-result-object v3

    .line 80
    const-string v2, "com.google.activity.segment"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    .line 82
    if-nez v3, :cond_10

    .line 83
    const-string v3, "No steps data source found in input"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    .line 84
    sget-object v3, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    const-string v4, "com.google.step_count.delta"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/fitness/b/c/ah;->i:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/q;Lcom/google/android/gms/fitness/b/h;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;

    move-result-object v3

    move-object v5, v3

    .line 90
    :goto_0
    if-nez v2, :cond_f

    .line 91
    const-string v2, "No segments data source found in input"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    .line 92
    sget-object v2, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    const-string v3, "com.google.activity.segment"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/b/c/ah;->j:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/q;Lcom/google/android/gms/fitness/b/h;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    move-object v4, v2

    .line 98
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 99
    const-string v2, "Input contains more than two data streams"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    .line 102
    :cond_0
    invoke-interface/range {p6 .. p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    invoke-interface {v5}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/c;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v9}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v9}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    cmp-long v9, v14, v12

    if-gez v9, :cond_3

    invoke-static {v6, v7, v3, v12, v13}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/ListIterator;Lcom/google/android/gms/fitness/b/c;J)V

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_3

    :cond_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    cmp-long v2, v14, v12

    if-gez v2, :cond_4

    invoke-static {v6, v7, v3, v12, v13}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/ListIterator;Lcom/google/android/gms/fitness/b/c;J)V

    :cond_4
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/util/Iterator;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v6, v5}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/Iterator;)V

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    :cond_8
    if-eqz v3, :cond_b

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v8}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;Ljava/util/List;)V

    invoke-static {v7}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/util/Iterator;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_9
    if-nez v3, :cond_c

    invoke-static {v6, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;)V

    invoke-static {v6, v5}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Ljava/util/Iterator;)V

    :cond_a
    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-gtz v4, :cond_d

    invoke-static {v6, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_4

    :cond_d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-gtz v4, :cond_7

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    :goto_6
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v8}, Lcom/google/android/gms/fitness/b/c/ah;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/c;Ljava/util/List;)V

    invoke-static {v7}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/util/Iterator;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v3

    goto :goto_6

    :cond_f
    move-object v4, v2

    goto/16 :goto_1

    :cond_10
    move-object v5, v3

    goto/16 :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    const-string v1, "com.google.step_count.delta"

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/ah;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v1, "com.google.activity.segment"

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/ah;->j:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/fitness/b/c/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-object v0
.end method
