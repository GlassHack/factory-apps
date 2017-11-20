.class public Lcom/google/maps/api/android/lib6/gmm6/o/f/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[F

.field b:Lcom/google/maps/api/android/lib6/gmm6/o/f/k;

.field public volatile c:[F

.field public d:[F

.field public e:[F

.field public f:I

.field g:B

.field private h:Z

.field private i:Z

.field private final j:F

.field private final k:F

.field private final l:F

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/o/f/d;

.field private n:Ljava/util/List;


# direct methods
.method public constructor <init>([F)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->c:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->d:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->e:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->a:[F

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->h:Z

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->f:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->n:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/f/k;

    iput-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->g:B

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->l:F

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/d;->c:Lcom/google/maps/api/android/lib6/gmm6/o/f/d;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->m:Lcom/google/maps/api/android/lib6/gmm6/o/f/d;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->c:[F

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->h:Z

    return-void
.end method
