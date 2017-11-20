.class final Lcom/google/android/gms/auth/trustagent/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/aa;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aa;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->e(Lcom/google/android/gms/auth/trustagent/x;)Z

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aa;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->f(Lcom/google/android/gms/auth/trustagent/x;)V

    .line 147
    return-void
.end method
