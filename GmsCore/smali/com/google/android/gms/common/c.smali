.class public final Lcom/google/android/gms/common/c;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/common/c;->a:Landroid/app/Dialog;

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/common/c;->b:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v1, Lcom/google/android/gms/common/c;

    invoke-direct {v1}, Lcom/google/android/gms/common/c;-><init>()V

    .line 82
    const-string v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 85
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    iput-object v0, v1, Lcom/google/android/gms/common/c;->a:Landroid/app/Dialog;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, v1, Lcom/google/android/gms/common/c;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/c;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/common/c;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/c;->a:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/c;->setShowsDialog(Z)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/c;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public final show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    return-void
.end method
