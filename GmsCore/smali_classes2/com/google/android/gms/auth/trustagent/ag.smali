.class final Lcom/google/android/gms/auth/trustagent/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/af;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/af;->a(Lcom/google/android/gms/auth/trustagent/af;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/af;->b(Lcom/google/android/gms/auth/trustagent/af;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/af;->startActivity(Landroid/content/Intent;)V

    .line 178
    :goto_0
    return v4

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ag;->a:Lcom/google/android/gms/auth/trustagent/af;

    const v2, 0x7f1001c2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
