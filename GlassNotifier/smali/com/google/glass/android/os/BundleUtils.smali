.class public final Lcom/google/glass/android/os/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9
    .param p0, "a"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v4

    .line 22
    :cond_1
    if-nez p0, :cond_2

    move v7, v4

    :goto_1
    if-nez p1, :cond_3

    move v6, v4

    :goto_2
    if-eq v7, v6, :cond_4

    move v4, v5

    .line 23
    goto :goto_0

    :cond_2
    move v7, v5

    .line 22
    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    move v4, v5

    .line 28
    goto :goto_0

    .line 32
    :cond_5
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 33
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "aValue":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "bValue":Ljava/lang/Object;
    if-eq v0, v1, :cond_6

    .line 41
    if-nez v0, :cond_7

    move v7, v4

    :goto_3
    if-nez v1, :cond_8

    move v6, v4

    :goto_4
    if-eq v7, v6, :cond_9

    move v4, v5

    .line 42
    goto :goto_0

    :cond_7
    move v7, v5

    .line 41
    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    .line 46
    :cond_9
    instance-of v6, v0, Landroid/os/Bundle;

    if-eqz v6, :cond_a

    instance-of v6, v1, Landroid/os/Bundle;

    if-eqz v6, :cond_a

    .line 47
    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "aValue":Ljava/lang/Object;
    check-cast v1, Landroid/os/Bundle;

    .end local v1    # "bValue":Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/glass/android/os/BundleUtils;->equal(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 48
    goto :goto_0

    .line 52
    .restart local v0    # "aValue":Ljava/lang/Object;
    .restart local v1    # "bValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 53
    goto :goto_0
.end method
