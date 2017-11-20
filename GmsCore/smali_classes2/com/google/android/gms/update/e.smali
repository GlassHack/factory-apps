.class final Lcom/google/android/gms/update/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/update/SystemUpdateService;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/update/SystemUpdateService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/google/android/gms/update/e;->b:Landroid/content/Context;

    .line 439
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v2, 0xa

    const/4 v8, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 443
    iget-object v3, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/update/d;->c()I

    move-result v3

    .line 444
    iget-object v4, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/update/d;->d()Z

    move-result v4

    .line 445
    iget-object v5, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 447
    iget-object v6, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 448
    iget-object v7, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;)I

    move-result v7

    if-eq v7, v3, :cond_2

    .line 449
    const-string v7, "battery_state"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    iget-object v7, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v7, v3}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;I)I

    .line 451
    if-eq v5, v8, :cond_0

    if-eq v5, v9, :cond_0

    const/16 v7, 0xe

    if-ne v5, v7, :cond_2

    .line 454
    :cond_0
    if-nez v3, :cond_6

    .line 455
    const-string v3, "status"

    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 466
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v3}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "update_urgency"

    invoke-static {v3, v7, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x6

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v3}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "update_battery_aware_automatic_timed"

    invoke-static {v3, v7, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/gms/update/e;->b:Landroid/content/Context;

    const-class v8, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/update/SystemUpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    move v0, v1

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gms/update/SystemUpdateService;->d(Lcom/google/android/gms/update/SystemUpdateService;)Z

    move-result v3

    if-eq v3, v4, :cond_4

    .line 480
    const-string v3, "network_roaming"

    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 481
    iget-object v3, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v3, v4}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Z)Z

    .line 482
    if-eq v5, v1, :cond_3

    if-ne v5, v2, :cond_4

    .line 484
    :cond_3
    const-string v3, "status"

    if-eqz v4, :cond_8

    move v0, v2

    :goto_1
    invoke-interface {v6, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 490
    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 491
    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/update/e;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    .line 494
    :cond_5
    return-void

    .line 457
    :cond_6
    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 458
    const-string v3, "status"

    invoke-interface {v6, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 461
    :cond_7
    const-string v3, "status"

    const/16 v7, 0xe

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_8
    move v0, v1

    .line 484
    goto :goto_1
.end method
