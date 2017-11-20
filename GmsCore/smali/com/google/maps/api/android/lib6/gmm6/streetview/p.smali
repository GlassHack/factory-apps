.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/p;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:Z

.field c:Ljava/lang/String;

.field d:I

.field e:F

.field f:F

.field g:F

.field h:F

.field i:Z

.field private j:Lcom/google/maps/api/android/lib6/gmm6/streetview/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(III)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/n;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a(IIII)Z

    goto :goto_0
.end method

.method final a(Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->i:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->i:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->e:F

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/bp;->b()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->f:F

    iget v0, p1, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->g:F

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->h:F

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
