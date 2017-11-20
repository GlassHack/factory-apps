.class Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;
.super Ljava/lang/Object;
.source "ConfirmLgaaylActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 66
    const-string v0, "ConfirmLgaaylActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "ConfirmLgaaylActivity"

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;->this$0:Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->finish()V

    .line 72
    :cond_1
    return-void
.end method
