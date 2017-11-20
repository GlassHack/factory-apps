.class final Lcom/google/android/gms/auth/setup/d2d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/o;->b:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/o;->b:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100088

    new-instance v2, Lcom/google/android/gms/auth/setup/d2d/q;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/setup/d2d/q;-><init>(Lcom/google/android/gms/auth/setup/d2d/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100084

    new-instance v2, Lcom/google/android/gms/auth/setup/d2d/p;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/setup/d2d/p;-><init>(Lcom/google/android/gms/auth/setup/d2d/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method
