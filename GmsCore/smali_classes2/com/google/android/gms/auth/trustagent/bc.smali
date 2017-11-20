.class final Lcom/google/android/gms/auth/trustagent/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/bb;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bc;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bc;->a:Lcom/google/android/gms/auth/trustagent/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedPlacesSettings;->f()V

    .line 86
    return-void
.end method
