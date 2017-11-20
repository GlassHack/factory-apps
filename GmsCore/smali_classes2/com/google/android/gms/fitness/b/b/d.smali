.class abstract Lcom/google/android/gms/fitness/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/b/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 83
    if-ne p1, p0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/fitness/b/b/w;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Lcom/google/android/gms/fitness/b/b/w;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/b/w;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
