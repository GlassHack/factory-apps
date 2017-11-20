.class final Lcom/google/android/gms/auth/trustagent/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/n;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/n;->a:Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)Z

    .line 64
    return-void
.end method
