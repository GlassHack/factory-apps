.class public final Lcom/google/android/gms/common/server/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.service.default.INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isLoggingIntent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.service.DefaultIntentService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/p;-><init>(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    .line 196
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v1, "endView"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)Lcom/google/android/gms/common/server/p;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v1, "startView"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/common/server/p;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v1, "callingPackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    return-object p0
.end method

.method public final b()Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/common/server/p;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    return-object p0
.end method
