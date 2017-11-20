.class final Lcom/google/android/gms/fitness/sensors/c/e;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/sensors/c/b;

.field private final b:Lcom/google/android/gms/fitness/data/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/c/b;Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/c/e;->a:Lcom/google/android/gms/fitness/sensors/c/b;

    .line 211
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/c/e;->b:Lcom/google/android/gms/fitness/data/o;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/c/b;Lcom/google/android/gms/fitness/data/o;B)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/c/e;-><init>(Lcom/google/android/gms/fitness/sensors/c/b;Lcom/google/android/gms/fitness/data/o;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/e;->a:Lcom/google/android/gms/fitness/sensors/c/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/c/b;->a(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/Iterable;

    move-result-object v0

    .line 217
    const-string v1, "transformed %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/e;->b:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v2, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    const-string v2, "Couldn\'t push transformed event back to listener"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    const-string v0, "TransformingListener{%s->%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/e;->a:Lcom/google/android/gms/fitness/sensors/c/b;

    invoke-interface {v3}, Lcom/google/android/gms/fitness/sensors/c/b;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/e;->a:Lcom/google/android/gms/fitness/sensors/c/b;

    invoke-interface {v3}, Lcom/google/android/gms/fitness/sensors/c/b;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
