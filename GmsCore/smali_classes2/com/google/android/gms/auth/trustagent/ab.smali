.class final Lcom/google/android/gms/auth/trustagent/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ab;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ab;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->b(Lcom/google/android/gms/auth/trustagent/x;)Lcom/google/android/gms/auth/trustagent/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/ae;->b(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V

    .line 168
    return-void
.end method
