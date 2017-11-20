.class final Lcom/google/android/gms/auth/trustagent/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/ao;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/b;->a:Lcom/google/android/gms/auth/trustagent/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "onPreferencesAvailable() should be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/b;->a:Lcom/google/android/gms/auth/trustagent/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/a;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/b;->a:Lcom/google/android/gms/auth/trustagent/a;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/a;->a(Lcom/google/android/gms/auth/trustagent/a;)V

    .line 59
    :cond_0
    return-void
.end method
