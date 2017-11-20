.class public final Lcom/google/android/location/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/g/d;

.field public b:I

.field public c:F

.field public d:I

.field public e:I

.field public f:Lcom/google/android/location/g/e;


# direct methods
.method constructor <init>(IFII)V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    sget-object v0, Lcom/google/android/location/g/d;->b:Lcom/google/android/location/g/d;

    iput-object v0, p0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    .line 298
    iput p1, p0, Lcom/google/android/location/g/c;->b:I

    .line 299
    iput p2, p0, Lcom/google/android/location/g/c;->c:F

    .line 300
    iput p3, p0, Lcom/google/android/location/g/c;->d:I

    .line 301
    iput p4, p0, Lcom/google/android/location/g/c;->e:I

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    .line 303
    return-void
.end method

.method constructor <init>(Lcom/google/android/location/g/e;)V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    sget-object v0, Lcom/google/android/location/g/d;->a:Lcom/google/android/location/g/d;

    iput-object v0, p0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    .line 311
    iput-object p1, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    .line 313
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    if-ne p0, p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/g/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 360
    goto :goto_0

    .line 363
    :cond_2
    check-cast p1, Lcom/google/android/location/g/c;

    .line 365
    iget-object v2, p0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    iget-object v3, p1, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/g/c;->b:I

    iget v3, p1, Lcom/google/android/location/g/c;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/g/c;->c:F

    iget v3, p1, Lcom/google/android/location/g/c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/location/g/c;->d:I

    iget v3, p1, Lcom/google/android/location/g/c;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/g/c;->e:I

    iget v3, p1, Lcom/google/android/location/g/c;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    iget-object v3, p1, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    invoke-virtual {v2, v3}, Lcom/google/android/location/g/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    invoke-virtual {v0}, Lcom/google/android/location/g/d;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 377
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/g/c;->b:I

    add-int/2addr v0, v1

    .line 378
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/g/c;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/g/c;->d:I

    add-int/2addr v0, v1

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/location/g/c;->e:I

    add-int/2addr v0, v1

    .line 381
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 382
    return v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    invoke-virtual {v0}, Lcom/google/android/location/g/e;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    sget-object v1, Lcom/google/android/location/g/d;->a:Lcom/google/android/location/g/d;

    if-ne v0, v1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Leaf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    invoke-virtual {v1}, Lcom/google/android/location/g/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[%d] <= %f (%d) : (%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/location/g/c;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/location/g/c;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/location/g/c;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/location/g/c;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
