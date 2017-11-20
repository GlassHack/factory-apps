.class final Lcom/google/android/location/places/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/Map;

.field final c:Ljava/util/Map;

.field final synthetic d:Lcom/google/android/location/places/d/b;


# direct methods
.method private constructor <init>(Lcom/google/android/location/places/d/b;)V
    .locals 4

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/location/places/d/d;->d:Lcom/google/android/location/places/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/google/android/location/places/d/d;->d:Lcom/google/android/location/places/d/b;

    invoke-static {v1}, Lcom/google/android/location/places/d/b;->i(Lcom/google/android/location/places/d/b;)Lcom/google/android/gms/common/util/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/places/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/d;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/places/d/b;B)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/google/android/location/places/d/d;-><init>(Lcom/google/android/location/places/d/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/places/Subscription;)Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/location/places/Subscription;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
