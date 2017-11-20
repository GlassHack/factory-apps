.class final Lcom/google/android/gms/auth/setup/d2d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/n;->a:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/n;->a:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/r;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/r;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/n;->a:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/n;->a:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 110
    return-void
.end method
