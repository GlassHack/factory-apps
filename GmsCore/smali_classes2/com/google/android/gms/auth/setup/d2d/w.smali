.class final Lcom/google/android/gms/auth/setup/d2d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/setup/d2d/c;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/v;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/w;->a:Lcom/google/android/gms/auth/setup/d2d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/setup/d2d/g;)V
    .locals 2

    .prologue
    .line 111
    const-string v0, "D2D.TargetBootstrapFragment"

    const-string v1, "Connection secured."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/w;->a:Lcom/google/android/gms/auth/setup/d2d/v;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/setup/d2d/v;->a(Lcom/google/android/gms/auth/setup/d2d/v;Lcom/google/android/gms/auth/setup/d2d/g;)Lcom/google/android/gms/auth/setup/d2d/g;

    .line 113
    return-void
.end method
