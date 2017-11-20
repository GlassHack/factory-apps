.class public Lcom/google/android/location/places/ImplicitSignalsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 31
    sget-object v0, Lcom/google/android/location/x;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 37
    const/4 v0, -0x1

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_2
    :goto_1
    const-string v1, "PLACE_IDS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 48
    if-nez v4, :cond_3

    .line 49
    const-string v0, "Places"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Places"

    const-string v1, "Missing Place IDs"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string v4, "Places"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    const-string v4, "Places"

    const-string v5, "Could not find package info"

    invoke-static {v4, v5, v1}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 54
    :cond_3
    const-string v1, "METHOD_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 56
    if-nez v5, :cond_4

    .line 57
    const-string v0, "Places"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Places"

    const-string v1, "Missing method names"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v1, v6, :cond_5

    const/4 v1, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inconsistent sizes! placeIds.size() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tags.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1, v3, v0}, Lcom/google/android/location/places/au;->a(ILjava/lang/String;I)Lcom/google/c/f/b/n;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/c/f/b/j;

    iput-object v0, v1, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    new-instance v3, Lcom/google/c/f/b/j;

    invoke-direct {v3}, Lcom/google/c/f/b/j;-><init>()V

    aput-object v3, v0, v2

    iget-object v0, v1, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    aget-object v3, v0, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/google/c/f/b/j;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    aget-object v3, v0, v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/google/c/f/b/j;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2

    .line 66
    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/location/places/PlaylogService;->a(Landroid/content/Context;Lcom/google/c/f/b/n;)V

    goto/16 :goto_0
.end method
