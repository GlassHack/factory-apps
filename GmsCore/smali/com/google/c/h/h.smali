.class abstract Lcom/google/c/h/h;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/c/h/h;

.field static final b:Lcom/google/c/h/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/h/i;

    invoke-direct {v0}, Lcom/google/c/h/i;-><init>()V

    sput-object v0, Lcom/google/c/h/h;->a:Lcom/google/c/h/h;

    new-instance v0, Lcom/google/c/h/j;

    invoke-direct {v0}, Lcom/google/c/h/j;-><init>()V

    sput-object v0, Lcom/google/c/h/h;->b:Lcom/google/c/h/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/h/h;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 3

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/c/h/h;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/c/h/h;->c(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/c/h/h;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/c/h/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/google/c/h/h;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Iterable;)Lcom/google/c/c/eo;
    .locals 3

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/google/c/h/h;->a(Ljava/lang/Object;Ljava/util/Map;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/c/c/gm;->b()Lcom/google/c/c/gm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/c/gm;->a()Lcom/google/c/c/gm;

    move-result-object v1

    new-instance v2, Lcom/google/c/h/k;

    invoke-direct {v2, v1, v0}, Lcom/google/c/h/k;-><init>(Ljava/util/Comparator;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/c/c/gm;->a(Ljava/lang/Iterable;)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;)Lcom/google/c/c/eo;
    .locals 1

    invoke-static {p1}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/h/h;->a(Ljava/lang/Iterable;)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Class;
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Iterable;
.end method

.method abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method
