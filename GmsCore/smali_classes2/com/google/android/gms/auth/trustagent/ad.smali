.class final Lcom/google/android/gms/auth/trustagent/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ad;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ad;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->b(Lcom/google/android/gms/auth/trustagent/x;)Lcom/google/android/gms/auth/trustagent/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/ae;->b(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V

    .line 183
    return-void
.end method
