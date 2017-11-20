.class final Lcom/google/android/gms/config/k;
.super Lcom/google/android/gms/config/a/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/config/ConfigService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/config/ConfigService;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-direct {p0}, Lcom/google/android/gms/config/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-virtual {v1}, Lcom/google/android/gms/config/ConfigService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    .line 367
    const-string v0, "ConfigService"

    const-string v1, "unauthorized call to getOneDigest()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0, p1}, Lcom/google/android/gms/config/ConfigService;->a(Lcom/google/android/gms/config/ConfigService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/util/Map;
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-virtual {v1}, Lcom/google/android/gms/config/ConfigService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    .line 358
    const-string v0, "ConfigService"

    const-string v1, "unauthorized call to getDigests()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->d(Lcom/google/android/gms/config/ConfigService;)Ljava/util/TreeMap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-virtual {v1}, Lcom/google/android/gms/config/ConfigService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    .line 376
    const-string v0, "ConfigService"

    const-string v1, "unauthorized call to replacePackageMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    if-nez p2, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/config/ConfigService;->a(Lcom/google/android/gms/config/ConfigService;Ljava/lang/String;Ljava/util/TreeMap;)V

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/gms/config/k;->a:Lcom/google/android/gms/config/ConfigService;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/config/ConfigService;->a(Lcom/google/android/gms/config/ConfigService;Ljava/lang/String;Ljava/util/TreeMap;)V

    goto :goto_0
.end method
