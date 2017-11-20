.class public final Lcom/google/android/youtube/core/async/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/DeviceAuthorizer;
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/t;

.field private final b:Landroid/content/SharedPreferences;

.field private volatile c:Z

.field private final d:Landroid/os/ConditionVariable;

.field private volatile e:Lcom/google/android/youtube/core/model/c;

.field private volatile f:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/t;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "deviceRegistrationClient cannot be null"

    .line 37
    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/t;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->a:Lcom/google/android/youtube/core/client/t;

    .line 39
    const-string v0, "preferences cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->b:Landroid/content/SharedPreferences;

    .line 41
    invoke-static {p2}, Lcom/google/android/youtube/core/model/c;->a(Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/model/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->d:Landroid/os/ConditionVariable;

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/c;)V
    .locals 2

    .prologue
    .line 82
    iput-object p2, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->f:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/m;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/c;->a(Lcom/google/android/youtube/core/model/c;Landroid/content/SharedPreferences;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/m;->c:Z

    .line 87
    const-string v0, "device registered"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/m;->f:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/m;->c:Z

    .line 96
    const-string v0, "device registration failed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    iget-object v1, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/youtube/core/async/m;->c:Z

    if-nez v2, :cond_3

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/async/m;->c:Z

    .line 64
    iget-object v1, p0, Lcom/google/android/youtube/core/async/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 60
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->a:Lcom/google/android/youtube/core/client/t;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/client/t;->a(Lcom/google/android/youtube/core/async/h;)V

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->f:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->f:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    throw v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_2

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/async/m;->e:Lcom/google/android/youtube/core/model/c;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/m;->a(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Lcom/google/android/youtube/core/model/c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/m;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/c;)V

    return-void
.end method
