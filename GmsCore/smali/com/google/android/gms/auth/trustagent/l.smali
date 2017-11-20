.class final Lcom/google/android/gms/auth/trustagent/l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auth_trust_agent_pref_first_notification_shown_"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d()Ljava/util/Map;

    move-result-object v0

    .line 109
    const-class v2, Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string v2, "type"

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "name"

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_trust_agent_pref_first_notification_shown_"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0, v4}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;Z)Z

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b()Z

    move-result v1

    const-string v2, "high auth confidence no longer required."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(ZLjava/lang/String;)V

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    const-class v2, Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "type"

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "name"

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auth_trust_agent_pref_first_notification_shown_"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 136
    :cond_3
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    const-string v1, "switched user"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(ZLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0, v5}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;Z)Z

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Z)V

    goto :goto_1

    .line 142
    :cond_4
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/l;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Z)V

    goto :goto_1
.end method
