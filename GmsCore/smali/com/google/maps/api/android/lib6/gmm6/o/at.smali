.class public final Lcom/google/maps/api/android/lib6/gmm6/o/at;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/o/at;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:[I

.field private final h:[I

.field private final i:[F

.field private j:Ljava/util/TreeSet;

.field private final k:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/at;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a:Lcom/google/maps/api/android/lib6/gmm6/o/at;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v2, 0x15

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->b:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->f:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->k:[F

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->j:Ljava/util/TreeSet;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 9

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p3

    div-float v5, v0, v1

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->f:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    array-length v6, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    add-int/lit8 v1, v6, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->k:[F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->k:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->j:Ljava/util/TreeSet;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    int-to-float v2, v0

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    :goto_0
    if-ge v4, v6, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->j:Ljava/util/TreeSet;

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    aget v7, v7, v4

    aget v1, v1, v7

    const/4 v7, 0x0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    int-to-float v1, v4

    mul-float/2addr v1, v5

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    :goto_1
    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    aget v7, v7, v4

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    aput v2, v7, v0

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->k:[F

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    aput v1, v2, v0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->j:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    aput v1, v3, v0

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    aput v0, v3, v1

    :cond_2
    move v1, v0

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move v1, v0

    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->f:I

    return v0
.end method

.method public final a(F)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->d:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    :goto_0
    return v0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->g:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->e:I

    return v0
.end method

.method public final b(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->h:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->j:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(I)F
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final e(I)F
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->i:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->k:[F

    aget v0, v0, p1

    goto :goto_0
.end method
