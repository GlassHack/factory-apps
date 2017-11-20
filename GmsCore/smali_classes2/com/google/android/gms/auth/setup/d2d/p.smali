.class final Lcom/google/android/gms/auth/setup/d2d/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/o;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/p;->a:Lcom/google/android/gms/auth/setup/d2d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/p;->a:Lcom/google/android/gms/auth/setup/d2d/o;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/o;->b:Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)V

    .line 229
    return-void
.end method
