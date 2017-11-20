.class public Lcom/google/android/gms/auth/firstparty/dataservice/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/s;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.auth.DATA_PROXY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 427
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 428
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ap;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/ao;

    move-result-object v0

    .line 432
    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ak;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ao;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 440
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :try_start_3
    const-string v4, "GoogleAccountDataServiceClient"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/u;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 443
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 436
    :catch_1
    move-exception v0

    .line 437
    :try_start_5
    const-string v4, "GoogleAccountDataServiceClient"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 443
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 1

    .prologue
    .line 373
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ag;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/AccountChangeEventsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/aa;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ab;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    .locals 1

    .prologue
    .line 164
    const-string v0, "ClearTokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/w;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/w;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/v;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/v;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ah;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    .locals 1

    .prologue
    .line 347
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/af;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/af;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/x;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/y;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/y;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 151
    const-string v0, "TokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/aj;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/z;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/z;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ae;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ai;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ad;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/u;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ak;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
