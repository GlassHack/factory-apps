.class final Lcom/google/android/gms/fitness/b/c/t;
.super Lcom/google/android/gms/fitness/b/c/p;
.source "SourceFile"


# instance fields
.field final synthetic f:Lcom/google/android/gms/fitness/b/c/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/s;Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/t;->f:Lcom/google/android/gms/fitness/b/c/s;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/fitness/b/c/p;-><init>(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/fitness/b/d;IJJ)V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/t;->f:Lcom/google/android/gms/fitness/b/c/s;

    int-to-float v0, p2

    invoke-static {v0, p3, p4, p5, p6}, Lcom/google/android/gms/fitness/b/c/s;->a(FJJ)F

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/t;->f:Lcom/google/android/gms/fitness/b/c/s;

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/c/s;->a(Lcom/google/android/gms/fitness/b/c/s;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 70
    int-to-float v0, p2

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/t;->f:Lcom/google/android/gms/fitness/b/c/s;

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/c/s;->a(Lcom/google/android/gms/fitness/b/c/s;)F

    move-result v1

    div-float/2addr v0, v1

    .line 71
    sub-long v2, p5, p3

    .line 72
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/s;->c()J

    move-result-wide v4

    long-to-float v1, v4

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 73
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/s;->c()J

    move-result-wide v4

    .line 74
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long p3, p5, v0

    .line 77
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p3, p4, v0}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p5, p6, v1}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    .line 80
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    .line 81
    return-void
.end method
