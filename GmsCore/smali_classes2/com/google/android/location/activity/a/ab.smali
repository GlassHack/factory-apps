.class public final Lcom/google/android/location/activity/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/a/o;


# instance fields
.field private final a:F

.field private b:Z

.field private c:[Lcom/google/android/location/activity/a/ac;

.field private d:I


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/activity/a/ab;->b:Z

    .line 54
    iput p1, p0, Lcom/google/android/location/activity/a/ab;->a:F

    .line 55
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "OffBodyActivityDetector"

    const-string v2, "reset."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iput v0, p0, Lcom/google/android/location/activity/a/ab;->d:I

    .line 48
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method private c()F
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 146
    const/high16 v1, -0x40800000    # -1.0f

    .line 147
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    .line 148
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v0, v0, v3

    iget-object v4, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/google/android/location/activity/a/ac;->a(Lcom/google/android/location/activity/a/ac;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 151
    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    .line 148
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 147
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 157
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 162
    const-wide v0, 0x9502f900L

    return-wide v0
.end method

.method public final a(JJLjava/util/List;)Ljava/util/List;
    .locals 13

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/location/activity/a/ab;->b:Z

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/activity/a/ac;

    iput-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    .line 92
    invoke-direct {p0}, Lcom/google/android/location/activity/a/ab;->b()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/a/ab;->b:Z

    .line 97
    :cond_0
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Lcom/google/android/location/activity/a/ac;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/activity/a/ac;-><init>(JFFF)V

    .line 101
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    .line 102
    iget v3, v1, Lcom/google/android/location/activity/a/ac;->b:F

    iget-object v4, v0, Lcom/google/android/location/d/i;->b:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/activity/a/ac;->b:F

    .line 103
    iget v3, v1, Lcom/google/android/location/activity/a/ac;->c:F

    iget-object v4, v0, Lcom/google/android/location/d/i;->b:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/google/android/location/activity/a/ac;->c:F

    .line 104
    iget v3, v1, Lcom/google/android/location/activity/a/ac;->d:F

    iget-object v0, v0, Lcom/google/android/location/d/i;->b:[F

    const/4 v4, 0x2

    aget v0, v0, v4

    add-float/2addr v0, v3

    iput v0, v1, Lcom/google/android/location/activity/a/ac;->d:F

    goto :goto_1

    .line 94
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/google/android/location/activity/a/ac;->a:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    aget-object v0, v0, v1

    iget-wide v2, v0, Lcom/google/android/location/activity/a/ac;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p3, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_4

    const-string v2, "OffBodyActivityDetector"

    const-string v3, "Check for stale measurement: latestTime=%d, currentTime=%d, isStale=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/google/android/location/activity/a/ab;->b()V

    goto/16 :goto_0

    .line 94
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 106
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    new-instance v8, Lcom/google/android/location/activity/a/ac;

    iget-wide v2, v1, Lcom/google/android/location/activity/a/ac;->a:J

    iget v4, v1, Lcom/google/android/location/activity/a/ac;->b:F

    mul-float/2addr v4, v0

    iget v5, v1, Lcom/google/android/location/activity/a/ac;->c:F

    mul-float/2addr v5, v0

    iget v1, v1, Lcom/google/android/location/activity/a/ac;->d:F

    mul-float v6, v1, v0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/activity/a/ac;-><init>(JFFF)V

    .line 107
    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    iget v9, p0, Lcom/google/android/location/activity/a/ab;->d:I

    invoke-virtual {v8, v8}, Lcom/google/android/location/activity/a/ac;->a(Lcom/google/android/location/activity/a/ac;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v6, v2

    new-instance v1, Lcom/google/android/location/activity/a/ac;

    iget-wide v2, v8, Lcom/google/android/location/activity/a/ac;->a:J

    iget v4, v8, Lcom/google/android/location/activity/a/ac;->b:F

    div-float/2addr v4, v6

    iget v5, v8, Lcom/google/android/location/activity/a/ac;->c:F

    div-float/2addr v5, v6

    iget v10, v8, Lcom/google/android/location/activity/a/ac;->d:F

    div-float v6, v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/activity/a/ac;-><init>(JFFF)V

    aput-object v1, v0, v9

    .line 108
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "OffBodyActivityDetector"

    const-string v1, "mMeasurementIndex=%d, thresholdAngle=%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/location/activity/a/ab;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/location/activity/a/ab;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_7
    iget v0, p0, Lcom/google/android/location/activity/a/ab;->d:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    .line 111
    iget-object v0, p0, Lcom/google/android/location/activity/a/ab;->c:[Lcom/google/android/location/activity/a/ac;

    invoke-direct {p0}, Lcom/google/android/location/activity/a/ab;->c()F

    move-result v0

    .line 112
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_8

    const-string v1, "OffBodyActivityDetector"

    const-string v2, "  maxAngle = %f degrees, thresholdAngle = %f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/location/activity/a/ab;->a:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_8
    iget v1, p0, Lcom/google/android/location/activity/a/ab;->a:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 120
    new-instance v0, Lcom/google/android/location/activity/a/s;

    sget-object v1, Lcom/google/android/location/activity/a/t;->l:Lcom/google/android/location/activity/a/t;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "OffBodyActivityDetector"

    const-string v1, "  OFF_BODY, confidence=100"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/google/android/location/activity/a/ab;->b()V

    .line 135
    :goto_5
    return-object v7

    .line 124
    :cond_a
    new-instance v0, Lcom/google/android/location/activity/a/s;

    sget-object v1, Lcom/google/android/location/activity/a/t;->l:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "OffBodyActivityDetector"

    const-string v1, "  OFF_BODY, confidence=0"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 129
    :cond_b
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_c

    const-string v0, "OffBodyActivityDetector"

    const-string v1, "  UNKNOWN, nothing reported."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_c
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_d

    const-string v0, "OffBodyActivityDetector"

    const-string v1, "detectActivity. accelData.size() = %s, gravityVector = %s, mMeasurementIndex=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/google/android/location/activity/a/ac;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/location/activity/a/ab;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_d
    iget v0, p0, Lcom/google/android/location/activity/a/ab;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/a/ab;->d:I

    goto :goto_5
.end method
