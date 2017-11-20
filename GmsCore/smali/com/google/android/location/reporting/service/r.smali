.class public final Lcom/google/android/location/reporting/service/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/service/i;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/location/reporting/service/r;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Ljava/util/List;
    .locals 4

    .prologue
    .line 34
    new-instance v1, Lcom/google/android/location/reporting/service/q;

    iget-object v0, p0, Lcom/google/android/location/reporting/service/r;->a:Landroid/content/Context;

    invoke-direct {v1, v0, p1}, Lcom/google/android/location/reporting/service/q;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/service/y;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/location/reporting/service/b;->a(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/location/reporting/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/reporting/b;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/google/android/gms/location/reporting/b;->a()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 41
    invoke-interface {v1}, Lcom/google/android/location/reporting/service/b;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/google/android/location/reporting/service/b;->a()V

    throw v0
.end method
