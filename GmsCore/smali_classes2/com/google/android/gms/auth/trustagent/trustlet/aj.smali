.class final Lcom/google/android/gms/auth/trustagent/trustlet/aj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aj;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;B)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/aj;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 324
    const-string v0, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aj;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V

    .line 327
    :cond_0
    return-void
.end method
