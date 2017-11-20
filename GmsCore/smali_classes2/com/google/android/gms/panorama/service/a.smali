.class final Lcom/google/android/gms/panorama/service/a;
.super Lcom/google/android/gms/panorama/a/e;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/panorama/a/e;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/panorama/service/a;->a:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/panorama/a/a;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/panorama/service/a;->a:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, -0x10000

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x10

    :goto_0
    if-lt v0, v1, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 86
    invoke-interface {p1, v3, v7, v3, v7}, Lcom/google/android/gms/panorama/a/a;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    .line 120
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 93
    :cond_2
    new-instance v0, Lcom/google/android/gms/panorama/b;

    iget-object v4, p0, Lcom/google/android/gms/panorama/service/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Lcom/google/android/gms/panorama/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/panorama/f/e;->a(Lcom/google/android/gms/panorama/f/d;)Lcom/google/android/gms/panorama/f/e;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/google/android/gms/panorama/f/e;->q:Z

    if-eqz v4, :cond_4

    .line 102
    :cond_3
    invoke-interface {p1, v3, v7, v3, v7}, Lcom/google/android/gms/panorama/a/a;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    goto :goto_2

    .line 108
    :cond_4
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/gms/panorama/service/a;->a:Landroid/content/Context;

    const-class v6, Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    if-eqz p3, :cond_5

    .line 111
    invoke-virtual {v4, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    :cond_5
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    if-eqz p4, :cond_6

    .line 116
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    :cond_6
    iget v5, v0, Lcom/google/android/gms/panorama/f/e;->j:I

    iget v6, v0, Lcom/google/android/gms/panorama/f/e;->h:I

    if-ne v5, v6, :cond_8

    iget v2, v0, Lcom/google/android/gms/panorama/f/e;->k:I

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->i:I

    if-ne v2, v0, :cond_7

    const/4 v0, 0x3

    :goto_3
    invoke-interface {p1, v3, v7, v0, v4}, Lcom/google/android/gms/panorama/a/a;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_3
.end method
