.class public final Lcom/google/android/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/d/a/b;->b:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/d/a/b;->a:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private b()[[C
    .locals 4

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/d/a/b;->b:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[C

    .line 93
    iget-object v0, p0, Lcom/google/android/d/a/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    .line 96
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/a;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/d/a/c;

    invoke-direct {p0}, Lcom/google/android/d/a/b;->b()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/d/a/c;-><init>([[C)V

    return-object v0
.end method

.method public final a(CLjava/lang/String;)Lcom/google/android/d/a/b;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/d/a/b;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v0, p0, Lcom/google/android/d/a/b;->b:I

    if-le p1, v0, :cond_0

    .line 69
    iput p1, p0, Lcom/google/android/d/a/b;->b:I

    .line 71
    :cond_0
    return-object p0
.end method
