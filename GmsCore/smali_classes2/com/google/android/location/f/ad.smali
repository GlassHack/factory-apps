.class public final Lcom/google/android/location/f/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/f/ae;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/ae;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    .line 38
    iput-object p2, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/location/f/ad;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/location/f/ad;

    sget-object v1, Lcom/google/android/location/f/ae;->a:Lcom/google/android/location/f/ae;

    invoke-direct {v0, v1, p0}, Lcom/google/android/location/f/ad;-><init>(Lcom/google/android/location/f/ae;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/ad;

    if-nez v2, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    check-cast p1, Lcom/google/android/location/f/ad;

    .line 53
    iget-object v2, p0, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    iget-object v3, p1, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v0}, Lcom/google/android/location/f/ae;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 63
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
