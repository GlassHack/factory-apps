.class public final Lcom/google/android/gms/fitness/service/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field final c:Ljava/util/Map;

.field final d:Ljava/util/Map;

.field e:Lcom/google/android/gms/fitness/service/at;

.field f:Lcom/google/android/gms/fitness/service/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ap;->c:Ljava/util/Map;

    .line 25
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ap;->d:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ap;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ap;->b:Landroid/os/Handler;

    .line 32
    return-void
.end method
