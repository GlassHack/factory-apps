.class public final Lcom/google/android/location/reporting/service/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/gcm/ag;

.field final b:Lcom/google/android/location/reporting/config/h;

.field c:Lcom/google/android/location/reporting/service/h;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/android/gms/gcm/ag;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ag;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/reporting/service/g;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Lcom/google/android/gms/gcm/ag;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/config/h;Lcom/google/android/gms/gcm/ag;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/g;->d:Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/google/android/location/reporting/service/g;->b:Lcom/google/android/location/reporting/config/h;

    .line 42
    iput-object p3, p0, Lcom/google/android/location/reporting/service/g;->a:Lcom/google/android/gms/gcm/ag;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/g;->c:Lcom/google/android/location/reporting/service/h;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/google/android/location/reporting/service/g;->b:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    sget-object v0, Lcom/google/android/location/reporting/service/y;->Q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/google/android/location/reporting/service/g;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/g;->c:Lcom/google/android/location/reporting/service/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/reporting/service/g;->c:Lcom/google/android/location/reporting/service/h;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_4

    .line 60
    :cond_3
    new-instance v0, Lcom/google/android/location/reporting/service/h;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/service/h;-><init>(Lcom/google/android/location/reporting/service/g;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/g;->c:Lcom/google/android/location/reporting/service/h;

    .line 61
    iget-object v0, p0, Lcom/google/android/location/reporting/service/g;->c:Lcom/google/android/location/reporting/service/h;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/google/android/location/reporting/service/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
