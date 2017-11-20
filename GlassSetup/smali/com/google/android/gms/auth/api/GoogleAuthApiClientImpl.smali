.class public final Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;,
        Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/auth/api/IGoogleAuthService;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "com.google.android.gms.auth.service.START"

.field public static final SERVICE_DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.auth.api.IGoogleAuthService"


# instance fields
.field private final pg:Ljava/lang/String;

.field private pv:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "settings"    # Lcom/google/android/gms/common/internal/ClientSettings;
    .param p4, "connectedListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .param p5, "connectionFailedListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "scopes"    # [Ljava/lang/String;

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p6, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pg:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pv:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/google/android/gms/common/internal/ClientSettings;
    .param p3, "connectedListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .param p4, "connectionFailedListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .param p5, "accountName"    # Ljava/lang/String;
    .param p6, "scopes"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;",
            ">;",
            "Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->setAccountName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pv:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->addScope(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/IGoogleAuthService;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/auth/api/IGoogleAuthService;->sendConnection(Lcom/google/android/gms/auth/api/IGoogleAuthApiCallbacks;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->cL()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;->b(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/IGoogleAuthService;
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/auth/api/IGoogleAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/IGoogleAuthService;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->pg:Ljava/lang/String;

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.IGoogleAuthService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/IGoogleAuthService;

    move-result-object v0

    return-object v0
.end method
