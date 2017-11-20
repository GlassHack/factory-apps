.class abstract Lcom/google/android/gms/fitness/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Ljava/lang/Comparable;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/e;->a:Ljava/lang/Comparable;

    .line 40
    return-void
.end method

.method static b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/gms/fitness/b/b/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/i;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/gms/fitness/b/b/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/g;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static d()Lcom/google/android/gms/fitness/b/b/e;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/h;->f()Lcom/google/android/gms/fitness/b/b/h;

    move-result-object v0

    return-object v0
.end method

.method static e()Lcom/google/android/gms/fitness/b/b/e;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/f;->f()Lcom/google/android/gms/fitness/b/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/b/b/e;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 67
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/h;->f()Lcom/google/android/gms/fitness/b/b/h;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/f;->f()Lcom/google/android/gms/fitness/b/b/f;

    move-result-object v2

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/e;->a:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/google/android/gms/fitness/b/b/e;->a:Ljava/lang/Comparable;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 74
    if-eqz v2, :cond_3

    move v0, v2

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    instance-of v2, p0, Lcom/google/android/gms/fitness/b/b/g;

    instance-of v3, p1, Lcom/google/android/gms/fitness/b/b/g;

    if-ne v2, v3, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method abstract a()Lcom/google/c/c/aj;
.end method

.method abstract a(Ljava/lang/StringBuilder;)V
.end method

.method abstract a(Ljava/lang/Comparable;)Z
.end method

.method abstract b()Lcom/google/c/c/aj;
.end method

.method abstract b(Ljava/lang/StringBuilder;)V
.end method

.method c()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/e;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lcom/google/android/gms/fitness/b/b/e;

    if-eqz v1, :cond_0

    .line 90
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
