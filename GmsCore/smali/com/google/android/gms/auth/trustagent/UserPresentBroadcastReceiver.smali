.class public Lcom/google/android/gms/auth/trustagent/UserPresentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/as;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gms/auth/trustagent/UserPresentBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/trustagent/UserPresentBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/google/android/gms/auth/trustagent/UserPresentBroadcastReceiver;->a:Ljava/lang/String;

    const-string v2, "Recieved ACTION_USER_PRESENT."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v2

    .line 34
    invoke-virtual {v2, p0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Lcom/google/android/gms/auth/trustagent/as;)V

    .line 35
    new-instance v3, Lcom/google/android/gms/auth/d/f;

    invoke-direct {v3, p1}, Lcom/google/android/gms/auth/d/f;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x63

    iput v0, v3, Lcom/google/android/gms/auth/d/f;->d:I

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/ar;->d()Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/android/gms/auth/d/f;->j:Z

    .line 38
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/android/gms/auth/d/f;->k:Z

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/ar;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/google/android/gms/auth/d/f;->l:Z

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/auth/d/f;->a()V

    .line 43
    invoke-virtual {v2, p0}, Lcom/google/android/gms/auth/trustagent/ar;->b(Lcom/google/android/gms/auth/trustagent/as;)V

    .line 45
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
