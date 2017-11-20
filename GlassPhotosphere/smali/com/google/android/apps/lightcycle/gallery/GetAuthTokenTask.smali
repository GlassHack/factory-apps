.class public Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;
.super Landroid/os/AsyncTask;
.source "GetAuthTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/accounts/Account;",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final PICASA_SERVICE_NAME:Ljava/lang/String; = "lh2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final bundleCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "bundleCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->accountManager:Landroid/accounts/AccountManager;

    .line 39
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->bundleCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 9
    .param p1, "account"    # [Landroid/accounts/Account;

    .prologue
    const/4 v8, 0x0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->accountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "lh2"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v7

    .line 48
    .local v7, "e":Landroid/accounts/OperationCanceledException;
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e":Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v0, v8

    .line 54
    goto :goto_0

    .line 49
    :catch_1
    move-exception v7

    .line 50
    .local v7, "e":Landroid/accounts/AuthenticatorException;
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 51
    .end local v7    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v7

    .line 52
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Landroid/accounts/Account;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->doInBackground([Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->bundleCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
