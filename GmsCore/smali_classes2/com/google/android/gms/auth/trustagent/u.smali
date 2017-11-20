.class final Lcom/google/android/gms/auth/trustagent/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/t;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/u;->a:Lcom/google/android/gms/auth/trustagent/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/u;->a:Lcom/google/android/gms/auth/trustagent/t;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/t;->b(Lcom/google/android/gms/auth/trustagent/t;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/u;->a:Lcom/google/android/gms/auth/trustagent/t;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/t;->a(Lcom/google/android/gms/auth/trustagent/t;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/u;->a:Lcom/google/android/gms/auth/trustagent/t;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/t;->c(Lcom/google/android/gms/auth/trustagent/t;)Lcom/google/android/gms/auth/trustagent/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/u;->a:Lcom/google/android/gms/auth/trustagent/t;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/t;->b(Lcom/google/android/gms/auth/trustagent/t;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/w;->a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)V

    .line 67
    return-void
.end method
