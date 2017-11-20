.class final Lcom/google/android/gms/auth/trustagent/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/be;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/be;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bg;->a:Lcom/google/android/gms/auth/trustagent/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bg;->a:Lcom/google/android/gms/auth/trustagent/be;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/be;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 314
    return-void
.end method
