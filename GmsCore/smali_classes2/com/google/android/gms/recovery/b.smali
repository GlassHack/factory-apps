.class final Lcom/google/android/gms/recovery/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/recovery/AccountRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/gms/recovery/b;->b:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iput-object p2, p0, Lcom/google/android/gms/recovery/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/recovery/b;->b:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->c(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/android/gms/recovery/e;

    iget-object v1, p0, Lcom/google/android/gms/recovery/b;->b:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v2, p0, Lcom/google/android/gms/recovery/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/recovery/e;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
