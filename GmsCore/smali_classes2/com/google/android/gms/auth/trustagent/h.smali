.class final Lcom/google/android/gms/auth/trustagent/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/f;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/h;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/gms/auth/trustagent/i;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/h;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/i;-><init>(Lcom/google/android/gms/auth/trustagent/f;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/h;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RESET_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/i;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
