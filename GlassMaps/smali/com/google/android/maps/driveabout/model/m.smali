.class public final Lcom/google/android/maps/driveabout/model/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, -0xaba9500

    if-ne p2, v0, :cond_0

    mul-int/lit8 p2, p2, -0x1

    .line 29
    :cond_0
    iput p1, p0, Lcom/google/android/maps/driveabout/model/m;->a:I

    .line 30
    iput p2, p0, Lcom/google/android/maps/driveabout/model/m;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/maps/driveabout/model/m;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/maps/driveabout/model/m;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/m;

    if-eqz v2, :cond_3

    .line 62
    check-cast p1, Lcom/google/android/maps/driveabout/model/m;

    .line 63
    iget v2, p1, Lcom/google/android/maps/driveabout/model/m;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/m;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/maps/driveabout/model/m;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/m;->b:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/maps/driveabout/model/m;->a:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/android/maps/driveabout/model/m;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/model/m;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/model/m;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
