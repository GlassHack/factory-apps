.class public final Lcom/google/c/c/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1982
    sget-object v0, Lcom/google/c/c/al;->a:Lcom/google/c/a/ab;

    const-string v1, "="

    new-instance v2, Lcom/google/c/a/ac;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/c/a/ac;-><init>(Lcom/google/c/a/ab;Ljava/lang/String;B)V

    sput-object v2, Lcom/google/c/c/cd;->a:Lcom/google/c/a/ac;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 113
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 114
    add-int/lit8 v0, p0, 0x1

    .line 119
    :goto_1
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    .line 117
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    .line 119
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1991
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1993
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2074
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/al;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    sget-object v1, Lcom/google/c/c/cd;->a:Lcom/google/c/a/ac;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/c/a/ac;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    .line 2077
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 722
    new-instance v0, Lcom/google/c/c/bd;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/bd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 749
    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/google/c/c/ce;

    invoke-direct {v0, p0}, Lcom/google/c/c/ce;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2023
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2024
    const/4 v0, 0x0

    .line 2026
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/c/c/cd;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2043
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2044
    const/4 v0, 0x0

    .line 2046
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/c/c/cd;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2003
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2005
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
