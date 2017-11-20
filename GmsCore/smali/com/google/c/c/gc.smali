.class public final Lcom/google/c/c/gc;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/c/a/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/c/c/if;->a:Lcom/google/c/a/ca;

    const-string v1, "="

    new-instance v2, Lcom/google/c/a/cd;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/c/a/cd;-><init>(Lcom/google/c/a/ca;Ljava/lang/String;B)V

    sput-object v2, Lcom/google/c/c/gc;->a:Lcom/google/c/a/cd;

    return-void
.end method

.method static a(Lcom/google/c/c/hi;)Lcom/google/c/c/hi;
    .locals 1

    new-instance v0, Lcom/google/c/c/gf;

    invoke-direct {v0, p0}, Lcom/google/c/c/gf;-><init>(Lcom/google/c/c/hi;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashMap;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/c/c/gc;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/c/c/gd;

    invoke-direct {v0, p0}, Lcom/google/c/c/gd;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/c/c/iz;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/iz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static b(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    add-int/lit8 v0, p0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/if;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/c/c/gc;->a:Lcom/google/c/a/cd;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/c/a/cd;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c()Ljava/util/concurrent/ConcurrentMap;
    .locals 6

    const/4 v5, -0x1

    new-instance v1, Lcom/google/c/c/gb;

    invoke-direct {v1}, Lcom/google/c/c/gb;-><init>()V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v1, Lcom/google/c/c/gb;->a:I

    if-ne v0, v5, :cond_0

    const/16 v0, 0x10

    :goto_0
    const/high16 v3, 0x3f400000    # 0.75f

    iget v4, v1, Lcom/google/c/c/gb;->b:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-direct {v2, v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v2

    :cond_0
    iget v0, v1, Lcom/google/c/c/gb;->a:I

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/google/c/c/gb;->b:I

    goto :goto_1
.end method

.method public static d()Ljava/util/IdentityHashMap;
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method static d(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/c/c/ge;

    invoke-direct {v1, v0}, Lcom/google/c/c/ge;-><init>(Ljava/util/Iterator;)V

    invoke-static {v1, p1}, Lcom/google/c/c/fp;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
