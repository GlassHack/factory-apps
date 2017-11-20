.class final Lcom/google/android/gms/auth/setup/d2d/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/u;->b:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/u;->b:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->f(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
