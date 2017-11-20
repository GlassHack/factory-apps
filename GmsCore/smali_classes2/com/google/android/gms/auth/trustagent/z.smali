.class final Lcom/google/android/gms/auth/trustagent/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/trustlet/an;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/z;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;Z)V
    .locals 1

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/z;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->b(Lcom/google/android/gms/auth/trustagent/x;)Lcom/google/android/gms/auth/trustagent/ae;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/trustagent/ae;->b(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    if-eqz p2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/z;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->c(Lcom/google/android/gms/auth/trustagent/x;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/z;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->d(Lcom/google/android/gms/auth/trustagent/x;)V

    goto :goto_0
.end method
