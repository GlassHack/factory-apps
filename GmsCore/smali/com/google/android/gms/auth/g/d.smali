.class public final Lcom/google/android/gms/auth/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.notouch.LAUNCH_AUTH_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gsf.notouch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
