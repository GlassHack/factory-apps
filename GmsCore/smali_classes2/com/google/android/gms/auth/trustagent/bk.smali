.class final Lcom/google/android/gms/auth/trustagent/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/bj;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bk;->a:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Lcom/google/android/gms/auth/trustagent/be;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bk;->a:Lcom/google/android/gms/auth/trustagent/bj;

    iget-object v1, v1, Lcom/google/android/gms/auth/trustagent/bj;->a:Lcom/google/android/gms/auth/trustagent/bb;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bk;->a:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/bj;->a(Lcom/google/android/gms/auth/trustagent/bj;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/be;-><init>(Lcom/google/android/gms/auth/trustagent/bb;Landroid/preference/Preference;)V

    .line 255
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bk;->a:Lcom/google/android/gms/auth/trustagent/bj;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/bj;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Coffee - TrustedPlacesFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/be;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    return-void
.end method
