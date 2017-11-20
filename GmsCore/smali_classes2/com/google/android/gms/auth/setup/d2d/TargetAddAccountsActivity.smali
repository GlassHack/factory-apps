.class public Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/CookieManager;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Collection;

.field private h:I

.field private i:Ljava/util/concurrent/Semaphore;

.field private j:Landroid/os/ResultReceiver;

.field private k:Z

.field private l:Lcom/google/android/setupwizard/util/b;

.field private m:Landroid/webkit/WebView;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "useImmersiveMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restoreAccount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restoreToken"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->i:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "D2D.TargetAddAccountActivity"

    const-string v1, "This should not happen."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j:Landroid/os/ResultReceiver;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/setup/d2d/AddAccountIntentService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->l:Lcom/google/android/setupwizard/util/b;

    const v1, 0x7f100087

    const v2, 0x7f10007c

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupwizard/util/b;->c(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->n:Landroid/view/View;

    .line 174
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e:Landroid/webkit/CookieManager;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 180
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v2, "credential"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e()V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "D2D.TargetAddAccountActivity"

    const-string v1, "This should not happen."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j:Landroid/os/ResultReceiver;

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gms/auth/setup/d2d/AddAccountIntentService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    iput-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->f:Ljava/lang/String;

    const-string v0, "D2D.TargetAddAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting challenge for account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e:Landroid/webkit/CookieManager;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/u;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/auth/setup/d2d/u;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 188
    :cond_2
    const-string v1, "D2D.TargetAddAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account has no credential nor URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->g:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/t;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/setup/d2d/t;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/setup/d2d/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->o:Z

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->o:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->m:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->h:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->onBackPressed()V

    .line 305
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 3

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->k:Z

    iget-boolean v2, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->p:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d()V

    .line 310
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->l:Lcom/google/android/setupwizard/util/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->removeView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->c()V

    .line 155
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->o:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->k:Z

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restoreAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restoreToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a:Ljava/util/List;

    .line 104
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e:Landroid/webkit/CookieManager;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->g:Ljava/util/Collection;

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->h:I

    .line 107
    new-instance v0, Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->h:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->i:Ljava/util/concurrent/Semaphore;

    .line 108
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->j:Landroid/os/ResultReceiver;

    .line 120
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->l:Lcom/google/android/setupwizard/util/b;

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->l:Lcom/google/android/setupwizard/util/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->setContentView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->m:Landroid/webkit/WebView;

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->m:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/s;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/setup/d2d/s;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->l:Lcom/google/android/setupwizard/util/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->a(Landroid/view/View;)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->c()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d()V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 168
    return-void
.end method
