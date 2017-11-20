.class public Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;
.super Ljava/lang/Object;
.source "AccountsUtil.java"


# static fields
.field private static final ACCOUNT_TYPE_COM_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final ALLOWED_ACOUNT_SUFFIX:Ljava/lang/String; = "@google.com"

.field public static final REQUEST_AUTHENTICATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private activeAccount:Landroid/accounts/Account;

.field private final context:Landroid/content/Context;

.field private pendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->context:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->accountManager:Landroid/accounts/AccountManager;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/util/Callback;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthTokenForActiveAccount(Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Landroid/accounts/AccountManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->accountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Landroid/os/Bundle;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/google/android/apps/lightcycle/util/Callback;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->onAuthBundleReceived(Landroid/os/Bundle;Lcom/google/android/apps/lightcycle/util/Callback;)V

    return-void
.end method

.method private filterAccounts([Landroid/accounts/Account;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    move-object v1, p1

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 354
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/accounts/Account;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    return-object v5
.end method

.method private getAuthTokenForActiveAccount(Lcom/google/android/apps/lightcycle/util/Callback;Z)V
    .locals 5
    .param p2, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAuthTokenForActiveAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    if-nez v1, :cond_0

    .line 264
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->TAG:Ljava/lang/String;

    const-string v2, "No active account"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, ""

    invoke-interface {p1, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 301
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;ZLcom/google/android/apps/lightcycle/util/Callback;)V

    .line 300
    .local v0, "bundleCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Landroid/os/Bundle;>;"
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->accountManager:Landroid/accounts/AccountManager;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/apps/lightcycle/util/Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/accounts/Account;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GetAuthTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onAuthBundleReceived(Landroid/os/Bundle;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    monitor-enter v3

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 331
    .local v0, "flags":I
    const v2, -0x10000001

    and-int/2addr v0, v2

    .line 332
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 323
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 334
    :cond_1
    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "authtoken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showGoogleAccountSelectionDialog(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Landroid/accounts/Account;>;"
    const/4 v9, 0x0

    .line 194
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lcom/google/android/apps/lightcycle/R$string;->select_google_account:I

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 196
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->accountManager:Landroid/accounts/AccountManager;

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 201
    .local v1, "allAccounts":[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v7

    if-eqz v7, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 202
    aget-object v7, v1, v9

    invoke-interface {p1, v7}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v7, "@google.com"

    invoke-direct {p0, v1, v7}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->filterAccounts([Landroid/accounts/Account;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 211
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v6, v0

    .line 212
    .local v6, "size":I
    new-array v5, v6, [Ljava/lang/String;

    .line 213
    .local v5, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 214
    aget-object v7, v0, v4

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v4

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    :cond_1
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 220
    aget-object v7, v0, v9

    invoke-interface {p1, v7}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_2
    array-length v7, v5

    if-lez v7, :cond_3

    .line 225
    new-instance v7, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;

    invoke-direct {v7, p0, p1, v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;[Landroid/accounts/Account;)V

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    :goto_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 236
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v7, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;

    invoke-direct {v7, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 242
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 232
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    sget v7, Lcom/google/android/apps/lightcycle/R$string;->no_suitable_account_found:I

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method


# virtual methods
.method public getActiveAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->activeAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAuthToken(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->showGoogleAccountSelectionDialog(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 127
    return-void
.end method

.method public onAuthenticationActivityResult(Z)V
    .locals 3
    .param p1, "requestCodeOk"    # Z

    .prologue
    .line 157
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez p1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 162
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->pendingCallbacks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_1
    return-void

    .line 169
    :cond_1
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthTokenForActiveAccount(Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    goto :goto_1
.end method
