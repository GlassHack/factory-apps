.class public final Lcom/google/android/gms/fitness/data/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 24
    const/4 v0, -0x1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 28
    if-gez v0, :cond_0

    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
