.class public final Lcom/google/android/maps/driveabout/vector/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/vector/d;


# instance fields
.field private final b:I

.field private final c:[I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:[I

.field private final i:[I

.field private final j:[F

.field private k:Ljava/util/TreeSet;

.field private final l:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/maps/driveabout/vector/d;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/d;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/d;->a:Lcom/google/android/maps/driveabout/vector/d;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:I

    .line 135
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/d;->g:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/d;->e:I

    .line 137
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    .line 138
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/d;->d:I

    .line 139
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    .line 140
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->l:[F

    .line 141
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->k:Ljava/util/TreeSet;

    .line 142
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->h:[I

    .line 143
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->i:[I

    .line 144
    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    .line 84
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/d;->b:I

    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p3

    div-float v5, v1, v2

    .line 86
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/d;->g:I

    .line 87
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    array-length v6, v1

    .line 88
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/d;->e:I

    .line 89
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    .line 90
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/d;->d:I

    .line 91
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    .line 92
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->l:[F

    .line 93
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 94
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->l:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 98
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->k:Ljava/util/TreeSet;

    .line 99
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/d;->d:I

    .line 100
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/d;->d:I

    int-to-float v2, v2

    move v4, v0

    move v0, v1

    .line 101
    :goto_0
    if-ge v4, v6, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->k:Ljava/util/TreeSet;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    aget v7, v7, v4

    aget v1, v1, v7

    const/4 v7, 0x0

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    .line 104
    int-to-float v1, v4

    mul-float/2addr v1, v5

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/d;->d:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    .line 105
    :goto_1
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/d;->c:[I

    aget v7, v7, v4

    if-ge v0, v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    aput v2, v7, v0

    .line 107
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/d;->l:[F

    aput v1, v7, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/d;->j:[F

    aput v1, v2, v0

    move v8, v1

    move v1, v0

    move v0, v8

    .line 101
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 113
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->h:[I

    .line 114
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/d;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->i:[I

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->h:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->i:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->k:Ljava/util/TreeSet;

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

    .line 119
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/d;->h:[I

    aput v1, v4, v0

    .line 120
    if-le v1, v3, :cond_2

    .line 121
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/d;->i:[I

    aput v0, v4, v1

    :cond_2
    move v1, v0

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    return-void

    :cond_4
    move v1, v0

    move v0, v2

    goto :goto_2
.end method
