.class final Lcom/google/android/gms/auth/trustagent/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/ay;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ba;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ba;->a:Lcom/google/android/gms/auth/trustagent/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ay;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 456
    return-void
.end method
