.class final Lcom/google/android/gms/auth/setup/d2d/s;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->d(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->e(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Z

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->f(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->g(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/s;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->h(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
