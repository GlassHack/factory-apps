.class final Lcom/google/android/gms/update/f;
.super Lcom/google/android/gms/update/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/update/SystemUpdateService;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/update/SystemUpdateService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {p0}, Lcom/google/android/gms/update/c;-><init>()V

    .line 1712
    iput-object p2, p0, Lcom/google/android/gms/update/f;->b:Landroid/content/Context;

    .line 1713
    return-void
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 1716
    invoke-static {}, Lcom/google/android/gms/update/f;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/update/f;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1721
    invoke-static {}, Lcom/google/android/gms/update/f;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1722
    const-string v1, "SystemUpdateServiceImpl"

    const-string v2, "getStatus failed: Binder does not have the permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :goto_0
    return v0

    .line 1725
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1726
    const-string v1, "SystemUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get status, returning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()J
    .locals 5

    .prologue
    .line 1732
    invoke-static {}, Lcom/google/android/gms/update/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    const-string v0, "SystemUpdateServiceImpl"

    const-string v1, "whenIsMobileDownloadAllowed failed:Binder does not have the permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const-wide/16 v0, -0x1

    .line 1739
    :goto_0
    return-wide v0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v0

    .line 1738
    const-string v2, "SystemUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "whenIsMobileDownloadAllowed, returning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1744
    invoke-static {}, Lcom/google/android/gms/update/f;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1745
    const-string v1, "SystemUpdateServiceImpl"

    const-string v2, "getDownloadPercent failed: Binder does not have the permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :goto_0
    return v0

    .line 1748
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "download_progress"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1749
    const-string v1, "SystemUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDownloadPercent, returning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1755
    const-string v0, "SystemUpdateServiceImpl"

    const-string v1, "approveDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-static {}, Lcom/google/android/gms/update/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    const-string v0, "SystemUpdateServiceImpl"

    const-string v1, "approveDownload failed: Binder does not have the permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :goto_0
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_approved"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1761
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/update/f;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1762
    const-string v1, "download_now"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    iget-object v1, p0, Lcom/google/android/gms/update/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 1768
    const-string v0, "SystemUpdateServiceImpl"

    const-string v1, "approveInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-static {}, Lcom/google/android/gms/update/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    const-string v0, "SystemUpdateServiceImpl"

    const-string v1, "approveInstall failed: Binder does not have the permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/update/f;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1774
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/update/SystemUpdateService;->b:Z

    .line 1775
    iget-object v0, p0, Lcom/google/android/gms/update/f;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/update/f;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
