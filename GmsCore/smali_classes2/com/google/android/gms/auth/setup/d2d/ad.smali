.class final Lcom/google/android/gms/auth/setup/d2d/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/ad;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ad;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android_d2d"

    invoke-static {v0, v1}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/d/b;

    move-result-object v0

    return-object v0
.end method
