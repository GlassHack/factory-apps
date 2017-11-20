.class public final Lcom/google/android/gms/panorama/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/panorama/g/n;

.field final b:F

.field public final c:F

.field public d:F

.field public final e:F

.field public final f:F

.field public g:F

.field public h:F

.field public final i:Lcom/google/android/gms/panorama/f/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/panorama/g/n;Lcom/google/android/gms/panorama/f/e;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    .line 34
    iput-object p2, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->h:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v1, v1, Lcom/google/android/gms/panorama/f/e;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/e;->b:F

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->i:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v1, v1, Lcom/google/android/gms/panorama/f/e;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/e;->c:F

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->l:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v1, v1, Lcom/google/android/gms/panorama/f/e;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/e;->f:F

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->m:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v1, v1, Lcom/google/android/gms/panorama/f/e;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/e;->e:F

    .line 45
    return-void
.end method
