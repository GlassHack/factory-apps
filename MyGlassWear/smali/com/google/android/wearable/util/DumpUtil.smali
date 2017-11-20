.class public Lcom/google/android/wearable/util/DumpUtil;
.super Ljava/lang/Object;
.source "DumpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpDumpables(Ljava/util/Map;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/wearable/util/Dumpable;",
            ">;>;",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "dumpables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/android/wearable/util/Dumpable;>;>;"
    const/4 v9, 0x0

    .line 18
    .local v9, "verbose":Z
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 19
    .local v8, "nameFilters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v1, v5

    .line 20
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v10, "verbose"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "-v"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 21
    :cond_0
    const/4 v9, 0x1

    .line 19
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 38
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "nameFilters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caught exception while dumping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 26
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "nameFilters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v6, Lcom/google/android/wearable/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v6, p1, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 27
    .local v6, "ipw":Lcom/google/android/wearable/util/IndentingPrintWriter;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 28
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/android/wearable/util/Dumpable;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/wearable/util/Dumpable;

    .line 29
    .local v2, "dumpable":Lcom/google/android/wearable/util/Dumpable;
    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/google/android/wearable/util/DumpUtil;->matchesNameFilters(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 32
    const-string v10, "#####################################"

    invoke-virtual {v6, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    invoke-interface {v2, v6, v9}, Lcom/google/android/wearable/util/Dumpable;->dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V

    .line 35
    invoke-virtual {v6}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println()V

    goto :goto_3

    .line 37
    .end local v2    # "dumpable":Lcom/google/android/wearable/util/Dumpable;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lcom/google/android/wearable/util/Dumpable;>;>;"
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/wearable/util/IndentingPrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static matchesNameFilters(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "nameFilters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 45
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :goto_0
    return v3

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "nameLower":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "nameFilter":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 54
    .end local v1    # "nameFilter":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
