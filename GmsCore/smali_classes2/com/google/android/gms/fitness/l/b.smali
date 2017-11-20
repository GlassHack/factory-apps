.class public final Lcom/google/android/gms/fitness/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/fitness/l/g;

.field public final c:Lcom/google/android/gms/fitness/l/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/b;->a:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/google/android/gms/fitness/l/g;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/l/g;-><init>(Lcom/google/android/gms/fitness/sensors/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/b;->b:Lcom/google/android/gms/fitness/l/g;

    .line 33
    new-instance v0, Lcom/google/android/gms/fitness/l/g;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/l/g;-><init>(Lcom/google/android/gms/fitness/sensors/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/b;->c:Lcom/google/android/gms/fitness/l/g;

    .line 34
    return-void
.end method
