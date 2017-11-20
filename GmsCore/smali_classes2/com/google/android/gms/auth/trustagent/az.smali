.class final Lcom/google/android/gms/auth/trustagent/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/ay;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/at;->b(Lcom/google/android/gms/auth/trustagent/at;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/ay;->a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ay;->a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_trust_agent_pref_trusted_bluetooth_address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/at;->a()Lcom/google/android/gms/auth/trustagent/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/ay;->a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/at;->a()Lcom/google/android/gms/auth/trustagent/ak;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth_trust_agent_pref_trusted_bluetooth_title"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/ay;->a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/at;->d(Lcom/google/android/gms/auth/trustagent/at;)V

    .line 449
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ay;->a:Lcom/google/android/gms/auth/trustagent/at;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/at;->c(Lcom/google/android/gms/auth/trustagent/at;)Lcom/google/android/gms/auth/trustagent/trustlet/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/az;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/ay;->a(Lcom/google/android/gms/auth/trustagent/ay;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method
