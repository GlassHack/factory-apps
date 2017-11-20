.class public Lcom/google/android/gms/auth/UnpackingRedirectActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 36
    const-string v0, "The target cannot be null!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/UnpackingRedirectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "target"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->finish()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a:Landroid/app/PendingIntent;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    return-void

    .line 47
    :cond_0
    const-string v0, "target"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ UnpackingRedirectActivity ]  Unable execute unpacked pending intent!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->setResult(I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->finish()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "target"

    iget-object v1, p0, Lcom/google/android/gms/auth/UnpackingRedirectActivity;->a:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    return-void
.end method
