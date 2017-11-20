.class public final Lcom/google/android/gms/subscribedfeeds/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/accounts/Account;

.field private d:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/subscribedfeeds/a;->b:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/subscribedfeeds/a;->c:Landroid/accounts/Account;

    .line 24
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->d:Landroid/accounts/AccountManager;

    .line 25
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/subscribedfeeds/a;->c:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/subscribedfeeds/a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/subscribedfeeds/a;->c:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/subscribedfeeds/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
