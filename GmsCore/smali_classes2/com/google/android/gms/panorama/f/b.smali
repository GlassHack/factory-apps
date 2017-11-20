.class public final Lcom/google/android/gms/panorama/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroid/content/Context;Lcom/google/android/gms/panorama/f/a;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f1002bc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x3

    const v2, 0x7f1002c1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/panorama/f/c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/panorama/f/c;-><init>(Lcom/google/android/gms/panorama/f/a;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 51
    return-void
.end method
