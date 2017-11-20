.class Lcom/google/android/gsf/settings/SettingsTosActivity$3;
.super Ljava/lang/Object;
.source "SettingsTosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/settings/SettingsTosActivity;->makeErrorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$3;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$3;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$3;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->finish()V

    .line 186
    :cond_0
    return-void
.end method
