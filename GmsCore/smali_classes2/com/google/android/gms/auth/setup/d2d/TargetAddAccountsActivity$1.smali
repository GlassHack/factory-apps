.class Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->b(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)Ljava/util/List;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity$1;->a:Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->c(Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;)V

    .line 117
    return-void
.end method
