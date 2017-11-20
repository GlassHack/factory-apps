.class public final Lcom/google/android/maps/driveabout/model/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/p;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/p;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    .line 44
    iput p2, p0, Lcom/google/android/maps/driveabout/model/r;->b:I

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/p;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 67
    if-ne p0, p1, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 71
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/r;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    check-cast p1, Lcom/google/android/maps/driveabout/model/r;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/p;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    check-cast p1, Lcom/google/android/maps/driveabout/model/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/p;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/r;->a:Lcom/google/android/maps/driveabout/model/p;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/r;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":mId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
