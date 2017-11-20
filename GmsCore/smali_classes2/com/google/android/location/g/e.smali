.class public final Lcom/google/android/location/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public final a([F)F
    .locals 6

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/g/f;

    .line 68
    iget v1, v0, Lcom/google/android/location/g/f;->a:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 69
    iget v0, v0, Lcom/google/android/location/g/f;->b:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 71
    :cond_0
    iget v1, v0, Lcom/google/android/location/g/f;->b:F

    iget v0, v0, Lcom/google/android/location/g/f;->a:I

    aget v0, p1, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    double-to-float v0, v2

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 119
    if-ne p0, p1, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    instance-of v0, p1, Lcom/google/android/location/g/e;

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    check-cast p1, Lcom/google/android/location/g/e;

    .line 129
    iget-object v0, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 136
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/g/f;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/location/g/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
