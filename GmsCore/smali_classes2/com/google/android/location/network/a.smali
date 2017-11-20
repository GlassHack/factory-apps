.class final Lcom/google/android/location/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/network/ConfirmAlertActivity;


# direct methods
.method constructor <init>(Lcom/google/android/location/network/ConfirmAlertActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/location/network/a;->a:Lcom/google/android/location/network/ConfirmAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/location/network/a;->a:Lcom/google/android/location/network/ConfirmAlertActivity;

    invoke-virtual {v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/location/network/a;->a:Lcom/google/android/location/network/ConfirmAlertActivity;

    invoke-virtual {v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->finish()V

    .line 134
    :cond_0
    return-void
.end method
