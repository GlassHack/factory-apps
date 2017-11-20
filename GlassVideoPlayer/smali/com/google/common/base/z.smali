.class public final Lcom/google/common/base/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/x;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/x;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    .line 356
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/x;Ljava/lang/String;Lcom/google/common/base/y;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/z;-><init>(Lcom/google/common/base/x;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 3

    .prologue
    .line 422
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 426
    iget-object v1, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 427
    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 428
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-static {v0}, Lcom/google/common/base/x;->a(Lcom/google/common/base/x;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 430
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 432
    iget-object v1, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 433
    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 436
    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 465
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 478
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/z;->a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-object p1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/common/base/z;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/google/common/base/z;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-virtual {v1, p1}, Lcom/google/common/base/x;->b(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/z;-><init>(Lcom/google/common/base/x;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 373
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
