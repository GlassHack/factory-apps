.class final Lcom/google/maps/api/android/lib6/gmm6/o/ah;
.super Lcom/google/maps/api/android/lib6/gmm6/o/b/a;


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/o/b/g;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;FFFI)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->b:F

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->c:F

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->d:F

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->e:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->f:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->b:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->c:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->d:F

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;FFF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->f:J

    sub-long/2addr v0, v4

    long-to-int v3, v0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/af;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->e:I

    sub-int v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/d;IZF)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    move-result-object v0

    return-object v0
.end method
