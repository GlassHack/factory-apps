.class final Lcom/google/android/gms/auth/setup/d2d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/x;->b:Lcom/google/android/gms/auth/setup/d2d/v;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/x;->b:Lcom/google/android/gms/auth/setup/d2d/v;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/v;->a(Lcom/google/android/gms/auth/setup/d2d/v;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method
