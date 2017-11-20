.class public Lcom/google/android/gms/auth/FilteringRedirectActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Random;


# instance fields
.field private b:Landroid/accounts/AccountAuthenticatorResponse;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/util/List;Landroid/accounts/AccountAuthenticatorResponse;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/FilteringRedirectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "com.google.android.gms.auth.redirect.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.google.android.gms.auth.redirect.whitelist"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 66
    if-eqz p3, :cond_0

    .line 67
    const-string v1, "com.google.android.gms.auth.redirect.authresp"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "categoryhack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 190
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->finish()V

    .line 195
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "booleanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    const-string v4, "booleanResult"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    const-string v0, "booleanResult"

    const-string v4, "booleanResult"

    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v0, "booleanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v0, v1

    .line 137
    :goto_0
    const-string v4, "retry"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    const-string v5, "retry"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string v0, "booleanResult"

    const-string v4, "retry"

    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v0, "retry"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v0, v1

    .line 147
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    iget-object v5, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    :goto_2
    move v2, v0

    .line 152
    goto :goto_1

    .line 153
    :cond_1
    if-eqz v2, :cond_3

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 157
    :cond_2
    invoke-virtual {p0, p2, v3}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->setResult(ILandroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->finish()V

    .line 184
    :goto_3
    return-void

    .line 169
    :cond_3
    if-nez p2, :cond_5

    const/4 v1, 0x4

    .line 174
    :goto_4
    if-nez p2, :cond_6

    const-string v0, "canceled"

    .line 175
    :goto_5
    if-eqz p3, :cond_4

    const-string v2, "errorCode"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    const-string v0, "errorCode"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    const-string v0, "errorMessage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_4
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a(IILjava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_5
    const/4 v1, 0x5

    goto :goto_4

    .line 174
    :cond_6
    const-string v0, "unknown error"

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-nez p1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    const-string v0, "com.google.android.gms.auth.redirect.authresp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    .line 84
    const-string v0, "com.google.android.gms.auth.redirect.whitelist"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    .line 85
    const-string v0, "com.google.android.gms.auth.redirect.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 88
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ FilteringRedirectActivity ]  Unable to initiate pending workflow! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "Cannot launch workflow!"

    .line 102
    const/16 v1, 0x8

    invoke-direct {p0, v7, v1, v0}, Lcom/google/android/gms/auth/FilteringRedirectActivity;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "GLSActivity"

    const-string v1, "[ FilteringRedirectActivity ] Marshalled state from icicle."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "com.google.android.gms.auth.redirect.authresp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    .line 107
    const-string v0, "com.google.android.gms.auth.redirect.whitelist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "com.google.android.gms.auth.redirect.authresp"

    iget-object v1, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->b:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    const-string v0, "com.google.android.gms.auth.redirect.whitelist"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/auth/FilteringRedirectActivity;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 118
    return-void
.end method
