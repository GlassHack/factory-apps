.class public final Lcom/google/android/location/reporting/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/reporting/a/e;


# direct methods
.method private constructor <init>(Lcom/google/android/location/reporting/a/e;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    .line 26
    return-void
.end method

.method private static a(IF)I
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 176
    :goto_0
    mul-int/lit8 v1, p0, 0x1f

    add-int/2addr v0, v1

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IJ)I
    .locals 5

    .prologue
    .line 171
    mul-int/lit8 v0, p0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/e;

    .line 33
    new-instance v3, Lcom/google/android/location/reporting/b/h;

    invoke-direct {v3, v0}, Lcom/google/android/location/reporting/b/h;-><init>(Lcom/google/android/location/reporting/a/e;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 128
    instance-of v1, p1, Lcom/google/android/location/reporting/b/h;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    check-cast p1, Lcom/google/android/location/reporting/b/h;

    iget-object v1, p1, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    .line 132
    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v2, v2, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    .line 133
    iget-object v3, v1, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    .line 134
    iget-object v4, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v4, v4, Lcom/google/android/location/reporting/a/e;->f:J

    iget-wide v6, v1, Lcom/google/android/location/reporting/a/e;->f:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v2, Lcom/google/android/location/reporting/a/f;->b:I

    iget v5, v3, Lcom/google/android/location/reporting/a/f;->b:I

    if-ne v4, v5, :cond_0

    iget v2, v2, Lcom/google/android/location/reporting/a/f;->d:I

    iget v3, v3, Lcom/google/android/location/reporting/a/f;->d:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->d:I

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->d:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->h:F

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->j:F

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->j:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v2, v2, Lcom/google/android/location/reporting/a/e;->l:D

    iget-wide v4, v1, Lcom/google/android/location/reporting/a/e;->l:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->n:F

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->n:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->o:I

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->o:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->q:I

    iget v3, v1, Lcom/google/android/location/reporting/a/e;->q:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v2, v2, Lcom/google/android/location/reporting/a/e;->s:Z

    iget-boolean v3, v1, Lcom/google/android/location/reporting/a/e;->s:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v2, v2, Lcom/google/android/location/reporting/a/e;->u:Z

    iget-boolean v3, v1, Lcom/google/android/location/reporting/a/e;->u:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v2, v2, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->y:I

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->y:I

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v0, v0, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-static {v3, v0, v1}, Lcom/google/android/location/reporting/b/h;->a(IJ)I

    move-result v0

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v1, v1, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    iget v1, v1, Lcom/google/android/location/reporting/a/f;->b:I

    add-int/2addr v0, v1

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v1, v1, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    iget v1, v1, Lcom/google/android/location/reporting/a/f;->d:I

    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->d:I

    add-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->h:F

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/h;->a(IF)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->j:F

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/h;->a(IF)I

    move-result v4

    .line 159
    iget-object v0, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v0, v0, Lcom/google/android/location/reporting/a/e;->l:D

    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-eqz v5, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    :goto_0
    invoke-static {v4, v0, v1}, Lcom/google/android/location/reporting/b/h;->a(IJ)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->n:F

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/h;->a(IF)I

    move-result v0

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->o:I

    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->q:I

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v0, v0, Lcom/google/android/location/reporting/a/e;->s:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v0, v1

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v1, v1, Lcom/google/android/location/reporting/a/e;->u:Z

    if-eqz v1, :cond_2

    :goto_2
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v1, v1, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v1, v1, Lcom/google/android/location/reporting/a/e;->y:I

    add-int/2addr v0, v1

    .line 167
    return v0

    .line 159
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 163
    goto :goto_1

    :cond_2
    move v2, v3

    .line 164
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v0, v0, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v2, "time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v4, v3, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, ", latE7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/location/reporting/a/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, ", lngE7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/location/reporting/a/f;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, ", source:  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, ", speed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->h:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, ", heading: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->j:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, ", altitude: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-wide v2, v2, Lcom/google/android/location/reporting/a/e;->l:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 115
    const-string v0, ", accuracy: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->n:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, ", gmmNlpVersion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v0, ", batteryLevel: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, ", batteryCharging: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v2, v2, Lcom/google/android/location/reporting/a/e;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, ", stationary: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-boolean v2, v2, Lcom/google/android/location/reporting/a/e;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, ", levelId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget-object v2, v2, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, ", levenNumberE3: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/reporting/b/h;->a:Lcom/google/android/location/reporting/a/e;

    iget v2, v2, Lcom/google/android/location/reporting/a/e;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
