.class public final Lcom/google/android/gms/auth/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/android/gms/common/b/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/f/a;->a:Lcom/google/android/gms/common/b/a;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/auth/f/a;->a:Lcom/google/android/gms/common/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    .line 17
    return-void
.end method
