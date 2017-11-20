.class final Lcom/google/android/gms/auth/trustagent/trustlet/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p2}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Lcom/google/android/gms/auth/trustagent/trustlet/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Lcom/google/android/gms/auth/trustagent/trustlet/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Lcom/google/android/gms/auth/trustagent/trustlet/d;Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b(Lcom/google/android/gms/auth/trustagent/trustlet/d;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/e;->a:Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b(Lcom/google/android/gms/auth/trustagent/trustlet/d;Ljava/lang/String;)V

    goto :goto_0
.end method
