.class final Lcom/google/android/gms/auth/trustagent/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/m;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/m;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->finish()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/m;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->overridePendingTransition(II)V

    .line 39
    return-void
.end method
