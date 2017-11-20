.class final Lcom/google/android/gms/auth/trustagent/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ak;

.field final synthetic b:Lcom/google/android/gms/auth/trustagent/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/bj;Lcom/google/android/gms/auth/trustagent/ak;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bl;->b:Lcom/google/android/gms/auth/trustagent/bj;

    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/bl;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bl;->b:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/bj;->a(Lcom/google/android/gms/auth/trustagent/bj;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bl;->b:Lcom/google/android/gms/auth/trustagent/bj;

    iget-object v1, v1, Lcom/google/android/gms/auth/trustagent/bj;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/bb;->a(Lcom/google/android/gms/auth/trustagent/bb;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bl;->b:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/bj;->a(Lcom/google/android/gms/auth/trustagent/bj;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bl;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bl;->b:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/bj;->a(Lcom/google/android/gms/auth/trustagent/bj;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bl;->a:Lcom/google/android/gms/auth/trustagent/ak;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_name_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bl;->a:Lcom/google/android/gms/auth/trustagent/ak;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_address_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method
