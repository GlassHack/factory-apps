.class final Lcom/google/android/gms/auth/trustagent/g;
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
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/g;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/g;->a:Lcom/google/android/gms/auth/trustagent/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/trustagent/f;->startActivity(Landroid/content/Intent;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
