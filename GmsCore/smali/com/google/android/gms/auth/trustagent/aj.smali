.class final Lcom/google/android/gms/auth/trustagent/aj;
.super Lcom/google/android/gms/auth/trustagent/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/PreferenceService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/PreferenceService;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/aj;->a:Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aj;->a:Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a(Lcom/google/android/gms/auth/trustagent/PreferenceService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 23
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 28
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_1
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v5, "Coffee - PreferenceService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported type in SharedPreference for key "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " type "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_3
    return-object v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aj;->a:Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a(Lcom/google/android/gms/auth/trustagent/PreferenceService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aj;->a:Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a(Lcom/google/android/gms/auth/trustagent/PreferenceService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aj;->a:Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/PreferenceService;->a(Lcom/google/android/gms/auth/trustagent/PreferenceService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    return-void
.end method
