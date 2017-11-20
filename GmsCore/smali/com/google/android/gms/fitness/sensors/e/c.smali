.class public final Lcom/google/android/gms/fitness/sensors/e/c;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private final b:Lcom/google/android/gms/fitness/sensors/e/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/e/d;)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/c;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 174
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/e/c;->b:Lcom/google/android/gms/fitness/sensors/e/d;

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/c;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 4

    .prologue
    .line 178
    const-string v0, "Dispatching with strategy %s to %d listeners: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/e/c;->b:Lcom/google/android/gms/fitness/sensors/e/d;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/e/c;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/c;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/google/android/gms/fitness/sensors/e/b;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/e/c;->b:Lcom/google/android/gms/fitness/sensors/e/d;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sensors/e/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 185
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_1

    .line 189
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 198
    const-string v1, "CompositeSensorListener{%s [%s]}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/c;->b:Lcom/google/android/gms/fitness/sensors/e/d;

    sget-object v4, Lcom/google/android/gms/fitness/sensors/e/d;->a:Lcom/google/android/gms/fitness/sensors/e/d;

    if-ne v0, v4, :cond_0

    const-string v0, "FIRE_ALL"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/e/c;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "FIRE_FIRST"

    goto :goto_0
.end method
