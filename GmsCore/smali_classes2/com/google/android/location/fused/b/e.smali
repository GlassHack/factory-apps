.class public final Lcom/google/android/location/fused/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/bf;


# instance fields
.field final a:Lcom/google/android/location/fused/b/a;

.field final b:Lcom/google/android/location/o/n;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/b/a;Lcom/google/android/location/o/n;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/b/e;->d:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/google/android/location/fused/b/e;->a:Lcom/google/android/location/fused/b/a;

    .line 42
    iput-object p2, p0, Lcom/google/android/location/fused/b/e;->b:Lcom/google/android/location/o/n;

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/b/e;->c:Landroid/content/pm/PackageManager;

    .line 44
    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/location/fused/ah;->a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/location/wearable/a;->a(Lcom/google/android/gms/wearable/internal/bf;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)Lcom/google/android/gms/wearable/internal/bf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/location/fused/b/a;->a(Lcom/google/android/gms/wearable/internal/bf;)V

    .line 46
    return-void
.end method

.method private static synthetic a(Lcom/google/android/location/fused/b/e;)V
    .locals 3

    .prologue
    .line 31
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/b/f;

    iget-boolean v0, v0, Lcom/google/android/location/fused/b/f;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->b:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->a()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->b:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->b()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->a:Lcom/google/android/location/fused/b/a;

    const-string v0, "com.google.android.location.fused.LOCATION_REQUESTS"

    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/m;->a([B)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    .line 71
    const-string v1, "TRIGGER_UPDATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/m;->c(Ljava/lang/String;)Z

    move-result v2

    .line 72
    iget-object v1, p0, Lcom/google/android/location/fused/b/e;->c:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/b/c;->a(Lcom/google/android/gms/wearable/m;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    .line 74
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->c()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/b/f;

    .line 76
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/google/android/location/fused/b/f;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/b/f;-><init>(Lcom/google/android/location/fused/b/e;Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/google/android/location/fused/b/e;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/location/fused/b/f;->b:Z

    iget-object v1, v0, Lcom/google/android/location/fused/b/f;->a:Lcom/google/android/location/o/u;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/location/o/u;->a(Ljava/util/List;Z)V

    iget-object v0, v0, Lcom/google/android/location/fused/b/f;->c:Lcom/google/android/location/fused/b/e;

    invoke-static {v0}, Lcom/google/android/location/fused/b/e;->a(Lcom/google/android/location/fused/b/e;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/location/fused/b/e;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/b/f;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/location/fused/b/f;->b:Z

    iget-object v1, v0, Lcom/google/android/location/fused/b/f;->a:Lcom/google/android/location/o/u;

    invoke-virtual {v1}, Lcom/google/android/location/o/u;->a()V

    iget-object v0, v0, Lcom/google/android/location/fused/b/f;->c:Lcom/google/android/location/fused/b/e;

    invoke-static {v0}, Lcom/google/android/location/fused/b/e;->a(Lcom/google/android/location/fused/b/e;)V

    .line 62
    :cond_0
    return-void
.end method
