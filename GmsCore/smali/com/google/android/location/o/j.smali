.class public final Lcom/google/android/location/o/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Collection;)Landroid/os/WorkSource;
    .locals 4

    .prologue
    .line 27
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 29
    iget v3, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->a:I

    iget-object v0, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/common/util/ac;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 6

    .prologue
    .line 39
    if-nez p0, :cond_1

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/ac;->a(Landroid/os/WorkSource;)I

    move-result v2

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 46
    new-instance v3, Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/ac;->a(Landroid/os/WorkSource;I)I

    move-result v4

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/ac;->b(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
