.class public Lcom/google/android/location/reporting/service/DeleteHistoryService;
.super Lcom/google/android/location/reporting/b/k;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/reporting/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "GCoreUlr-DeleteHistoryService"

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/b/k;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 72
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 73
    const-string v1, "messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 75
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 76
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/reporting/service/DeleteHistoryService;->a:Lcom/google/android/location/reporting/w;

    invoke-interface {v3, v0}, Lcom/google/android/location/reporting/w;->b(Landroid/accounts/Account;)Lcom/google/android/location/reporting/a;

    .line 80
    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->what:I

    .line 81
    const-string v0, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "GCoreUlr"

    const-string v3, "Location history deletion succeeded"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const/4 v3, 0x2

    :try_start_2
    iput v3, v2, Landroid/os/Message;->what:I

    .line 86
    const-string v3, "GCoreUlr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "GCoreUlr"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_2
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 100
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :catch_3
    move-exception v0

    .line 91
    const/4 v3, 0x3

    :try_start_4
    iput v3, v2, Landroid/os/Message;->what:I

    .line 92
    const-string v3, "GCoreUlr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const-string v3, "GCoreUlr"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :cond_3
    :try_start_5
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 98
    :catch_4
    move-exception v0

    .line 100
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    :try_start_6
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 103
    :cond_4
    :goto_1
    throw v0

    .line 98
    :catch_5
    move-exception v1

    .line 100
    const-string v2, "GCoreUlr"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v2, "GCoreUlr"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/location/reporting/b/k;->onCreate()V

    .line 56
    new-instance v0, Lcom/google/android/location/reporting/u;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/service/DeleteHistoryService;->a:Lcom/google/android/location/reporting/w;

    .line 57
    return-void
.end method
