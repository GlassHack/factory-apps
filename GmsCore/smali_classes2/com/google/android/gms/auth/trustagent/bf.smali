.class final Lcom/google/android/gms/auth/trustagent/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/gms/auth/trustagent/be;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/be;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bf;->b:Lcom/google/android/gms/auth/trustagent/be;

    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/bf;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bf;->b:Lcom/google/android/gms/auth/trustagent/be;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/be;->a(Lcom/google/android/gms/auth/trustagent/be;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bf;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bf;->b:Lcom/google/android/gms/auth/trustagent/be;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/be;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/bb;->a()Lcom/google/android/gms/auth/trustagent/ak;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth_trust_agent_pref_trusted_place_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bf;->b:Lcom/google/android/gms/auth/trustagent/be;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/be;->a(Lcom/google/android/gms/auth/trustagent/be;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bf;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method
