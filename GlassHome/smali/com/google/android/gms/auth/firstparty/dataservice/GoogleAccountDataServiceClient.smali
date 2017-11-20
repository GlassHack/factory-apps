.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GoogleAccountDataServiceClient"

.field private static final pZ:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->pZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static A(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.DATA_PROXY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a",
            "<TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->A(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Lcom/google/android/gms/common/a;

    invoke-direct {v3}, Lcom/google/android/gms/common/a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/a;->bY()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/u;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;->b(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "GoogleAccountDataServiceClient"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "GoogleAccountDataServiceClient"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method


# virtual methods
.method public checkAccountName(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 1
    .param p1, "accountCheckRequest"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    return-object v0
.end method

.method public checkPassword(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$18;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$18;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    return-object v0
.end method

.method public checkRealName(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$19;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$19;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    return-object v0
.end method

.method public clearToken(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    .locals 1
    .param p1, "clearTokenRequest"    # Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    .prologue
    const-string v0, "ClearTokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$2;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    return-object v0
.end method

.method public confirmCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$5;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public createAccount(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "signUpRequest"    # Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public createPlusProfile(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "signUpRequest"    # Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$22;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$22;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public getAccountChangeEvents(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$16;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$16;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/AccountChangeEventsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    return-object v0
.end method

.method public getAccountData(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$1;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    return-object v0
.end method

.method public getAccountExportData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$11;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$23;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$23;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAccountRecoveryCountryInfo()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$7;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    return-object v0
.end method

.method public getAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$8;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    return-object v0
.end method

.method public getAccountRecoveryGuidance(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    return-object v0
.end method

.method public getGplusInfo(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    return-object v0
.end method

.method public getOtp(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$17;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$17;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    return-object v0
.end method

.method public getReauthSettings(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$14;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$14;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    return-object v0
.end method

.method public getToken(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "tokenRequest"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .prologue
    const-string v0, "TokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$24;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$24;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public getWebSetupConfig(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public installAccountFromExportData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "exportData"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeAccount(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    return-object v0
.end method

.method public signIn(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$3;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public updateAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    return-object v0
.end method

.method public updateCredentials(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$6;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public verifyPin(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$15;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$15;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    return-object v0
.end method
