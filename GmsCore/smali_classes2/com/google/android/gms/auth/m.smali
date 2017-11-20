.class public Lcom/google/android/gms/auth/m;
.super Lcom/google/android/gms/common/c/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/auth/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f10006f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    if-eqz p2, :cond_0

    const-string v0, "initialize"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/google/android/gms/auth/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing CredentialStateSyncAdapter for account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p3, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-static {p1, p3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "credential-state"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "credential-state"

    aput-object v3, v2, v5

    invoke-static {v0, p1, p3, v1, v2}, Lcom/google/android/gsf/m;->a(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 51
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/m;->a(Z)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/m;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/m;->a(Z)V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/m;->a(Z)V

    throw v0
.end method
