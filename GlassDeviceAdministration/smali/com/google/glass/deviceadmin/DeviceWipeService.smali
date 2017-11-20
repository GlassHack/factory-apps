.class public Lcom/google/glass/deviceadmin/DeviceWipeService;
.super Landroid/app/IntentService;
.source "DeviceWipeService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/IntentService;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/deviceadmin/DeviceWipeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/deviceadmin/DeviceWipeService$1;

    invoke-direct {v1}, Lcom/google/glass/deviceadmin/DeviceWipeService$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private wipeDevice(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldWipeExternalStorage"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    sget-object v3, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Wiping device (shouldWipeExternalStorage: %s)"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const-string v3, "device_policy"

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 128
    .local v0, "manager":Landroid/app/admin/DevicePolicyManager;
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 129
    return-void

    :cond_0
    move v1, v2

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Remote wipe confirmation cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 57
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 59
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    new-instance v1, Lcom/google/glass/net/ProtoRequestDispatcher;

    new-instance v2, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v2, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 60
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    iput-object v1, p0, Lcom/google/glass/deviceadmin/DeviceWipeService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 62
    new-instance v1, Lcom/google/glass/deviceadmin/DeviceWipeService$2;

    iget-object v2, p0, Lcom/google/glass/deviceadmin/DeviceWipeService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/deviceadmin/DeviceWipeService$2;-><init>(Lcom/google/glass/deviceadmin/DeviceWipeService;Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v1}, Lcom/google/glass/deviceadmin/DeviceWipeService$2;->start()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/google/glass/deviceadmin/DeviceWipeService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->exit()V

    .line 72
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Remote wipe confirmation error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    const-string v5, "com.google.glass.deviceadmin.REMOTE_WIPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    sget-object v5, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Received remote wipe intent; confirming request..."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    new-instance v4, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;-><init>()V

    .line 80
    .local v4, "request":Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/deviceadmin/DeviceWipeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v6, "android_id"

    invoke-virtual {v5, v6}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;

    .line 81
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 83
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 85
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;->email:[Ljava/lang/String;

    aget-object v6, v0, v1

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/google/glass/deviceadmin/DeviceWipeService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->REMOTE_WIPE_CONFIRMATION:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/glass/deviceadmin/DeviceWipeService;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v5, v6, v4, v7, p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 101
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "i":I
    .end local v4    # "request":Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationRequest;
    :cond_1
    :goto_1
    return-void

    .line 90
    :cond_2
    const-string v5, "com.google.glass.deviceadmin.LOCAL_WIPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    sget-object v5, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Received local wipe intent; wiping device"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0, p0, v8}, Lcom/google/glass/deviceadmin/DeviceWipeService;->wipeDevice(Landroid/content/Context;Z)V

    goto :goto_1

    .line 93
    :cond_3
    const-string v5, "com.google.glass.deviceadmin.SET_ADMIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.google.glass.deviceadmin"

    const-string v6, "com.google.glass.deviceadmin.GlassDeviceAdminReceiver"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v3, "policyReceiver":Landroid/content/ComponentName;
    const-string v5, "device_policy"

    .line 97
    invoke-virtual {p0, v5}, Lcom/google/glass/deviceadmin/DeviceWipeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 98
    .local v2, "manager":Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2, v3, v8}, Lcom/google/android/glass/hidden/HiddenDevicePolicyManager;->setActiveAdmin(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Z)V

    .line 99
    sget-object v5, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Registered device administrator as the active admin."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;)V
    .locals 3
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->getWipeExternalStorage()Z

    move-result v0

    invoke-direct {p0, p0, v0}, Lcom/google/glass/deviceadmin/DeviceWipeService;->wipeDevice(Landroid/content/Context;Z)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceWipeService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Aborting remote wipe"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/deviceadmin/DeviceWipeService;->onSuccess(Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;)V

    return-void
.end method
