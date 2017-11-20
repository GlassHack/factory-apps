.class final Lcom/google/android/location/places/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/bp;

.field private final b:Lcom/google/android/location/f/bh;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/bp;Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/location/places/br;->a:Lcom/google/android/location/places/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/android/location/places/br;->b:Lcom/google/android/location/f/bh;

    .line 61
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/br;->b:Lcom/google/android/location/f/bh;

    invoke-virtual {v2}, Lcom/google/android/location/f/bh;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/google/android/location/places/br;->b:Lcom/google/android/location/f/bh;

    invoke-virtual {v2, v0}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v2

    .line 68
    iget-wide v4, v2, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v2, v2, Lcom/google/android/location/f/bb;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/br;->a:Lcom/google/android/location/places/bp;

    invoke-static {v0}, Lcom/google/android/location/places/bp;->a(Lcom/google/android/location/places/bp;)Lcom/google/android/location/h/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/h/q;->a(Ljava/util/Map;)Lcom/google/android/location/h/r;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/location/h/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_1
    if-nez v0, :cond_3

    .line 92
    :cond_1
    :goto_2
    return-void

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/places/br;->a:Lcom/google/android/location/places/bp;

    invoke-static {v2}, Lcom/google/android/location/places/bp;->a(Lcom/google/android/location/places/bp;)Lcom/google/android/location/h/q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/h/q;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/location/f/t;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, v0, Lcom/google/android/location/f/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    new-instance v4, Lcom/google/android/location/places/v;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v4, v1, v0}, Lcom/google/android/location/places/v;-><init>(Ljava/lang/String;F)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 89
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/location/places/br;->a:Lcom/google/android/location/places/bp;

    invoke-static {v0}, Lcom/google/android/location/places/bp;->b(Lcom/google/android/location/places/bp;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/bq;

    iget-object v3, p0, Lcom/google/android/location/places/br;->a:Lcom/google/android/location/places/bp;

    invoke-direct {v1, v3, v2}, Lcom/google/android/location/places/bq;-><init>(Lcom/google/android/location/places/bp;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
