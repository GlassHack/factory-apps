.class public Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;
.super Landroid/app/Activity;
.source "ConfirmLgaaylActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$LaunchingLocationSettingsReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 78
    const-string v2, "ConfirmLgaaylActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "ConfirmLgaaylActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    move v0, v1

    .line 82
    .local v0, "agreed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gsf/UseLocationForServices;->forceSetUseLocationForServices(Landroid/content/Context;Z)Z

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->finish()V

    .line 87
    return-void

    .line 81
    .end local v0    # "agreed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v3, "ConfirmLgaaylActivity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "ConfirmLgaaylActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    .line 50
    .local v2, "status":I
    if-ne v2, v5, :cond_1

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->finish()V

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v3, 0x7f0900dc

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v3, 0x7f0900dd

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v3, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$1;-><init>(Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
