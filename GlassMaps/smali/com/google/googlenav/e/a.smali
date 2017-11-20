.class public final Lcom/google/googlenav/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:F

.field private b:F

.field private c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/e/a;->b:F

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/e/a;->c:J

    .line 95
    iput-boolean p1, p0, Lcom/google/googlenav/e/a;->d:Z

    .line 96
    return-void
.end method

.method private a(FF)V
    .locals 6

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 148
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    sub-float v0, p2, v0

    div-float/2addr v0, v3

    .line 149
    iget v1, p0, Lcom/google/googlenav/e/a;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/e/a;->b:F

    .line 151
    iget v1, p0, Lcom/google/googlenav/e/a;->b:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    .line 152
    mul-float/2addr v0, v3

    iget v1, p0, Lcom/google/googlenav/e/a;->b:F

    div-float/2addr v0, v1

    .line 153
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    neg-float v3, v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    .line 154
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 156
    mul-float v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 157
    iput v5, p0, Lcom/google/googlenav/e/a;->b:F

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v1, p0, Lcom/google/googlenav/e/a;->b:F

    iget v2, p0, Lcom/google/googlenav/e/a;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, Lcom/google/googlenav/e/a;->b:F

    .line 160
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    iget v1, p0, Lcom/google/googlenav/e/a;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/e/a;->a:F

    goto :goto_0
.end method


# virtual methods
.method public final a(JF)F
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    .line 107
    iget-wide v0, p0, Lcom/google/googlenav/e/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/googlenav/e/a;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 108
    :cond_0
    iput p3, p0, Lcom/google/googlenav/e/a;->a:F

    .line 132
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/googlenav/e/a;->c:J

    .line 135
    iget-boolean v0, p0, Lcom/google/googlenav/e/a;->d:Z

    if-eqz v0, :cond_8

    .line 136
    :goto_1
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_7

    .line 137
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/google/googlenav/e/a;->a:F

    goto :goto_1

    .line 111
    :cond_2
    iget-boolean v0, p0, Lcom/google/googlenav/e/a;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 112
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_5

    .line 113
    add-float/2addr p3, v4

    .line 119
    :cond_3
    :goto_2
    iget-wide v0, p0, Lcom/google/googlenav/e/a;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 120
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    cmpg-float v1, v0, v5

    if-gez v1, :cond_6

    .line 122
    :cond_4
    iput p3, p0, Lcom/google/googlenav/e/a;->a:F

    .line 123
    iput v5, p0, Lcom/google/googlenav/e/a;->b:F

    goto :goto_0

    .line 115
    :cond_5
    sub-float/2addr p3, v4

    goto :goto_2

    .line 125
    :cond_6
    :goto_3
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    .line 126
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 127
    invoke-direct {p0, v1, p3}, Lcom/google/googlenav/e/a;->a(FF)V

    .line 128
    sub-float/2addr v0, v6

    .line 129
    goto :goto_3

    .line 139
    :cond_7
    :goto_4
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    .line 140
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/google/googlenav/e/a;->a:F

    goto :goto_4

    .line 144
    :cond_8
    iget v0, p0, Lcom/google/googlenav/e/a;->a:F

    return v0
.end method
