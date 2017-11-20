.class final Lcom/google/glass/lockrecovery/RecoveryCodeManager;
.super Ljava/lang/Object;
.source "RecoveryCodeManager.java"


# static fields
.field static final RECOVERY_CODE_KEY:Ljava/lang/String; = "recovery_code"

.field static final RECOVERY_PREFS_FILENAME:Ljava/lang/String; = "recovery_prefs"

.field static final TUTORIAL_COMPLETED_KEY:Ljava/lang/String; = "tutorial_completed"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "recovery_prefs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "prefsForTest"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method


# virtual methods
.method public codeMatches(J)Z
    .locals 4
    .param p1, "recoveryCode"    # J

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "recovery_code"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "recovery_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasTutorialCompleted()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "tutorial_completed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setTutorialCompleted()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tutorial_completed"

    const/4 v2, 0x1

    .line 75
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public store(J)V
    .locals 2
    .param p1, "recoveryCode"    # J

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recovery_code"

    .line 41
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    return-void
.end method
