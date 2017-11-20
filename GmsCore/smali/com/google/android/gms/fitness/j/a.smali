.class public abstract Lcom/google/android/gms/fitness/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Lcom/google/android/gms/fitness/j/b;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/google/android/gms/fitness/j/b;

    invoke-interface {p0}, Lcom/google/android/gms/fitness/j/b;->a()Lcom/google/android/gms/fitness/j/a;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/j/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/fitness/m/a;)Lcom/google/android/gms/fitness/a/o;
.end method

.method public abstract a(Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/m/a;
.end method

.method public abstract a()Lcom/google/android/gms/fitness/n/ar;
.end method

.method public abstract a(Landroid/os/Handler;)Lcom/google/android/gms/fitness/n/d;
.end method

.method public abstract a(Ljava/util/List;Lcom/google/android/gms/fitness/sensors/a/a;)Lcom/google/android/gms/fitness/sensors/a;
.end method

.method public abstract a(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/n/d;)Lcom/google/android/gms/fitness/service/au;
.end method

.method public abstract b(Landroid/os/Handler;)Lcom/google/android/gms/fitness/sensors/a/a;
.end method

.method public abstract b()Lcom/google/android/gms/fitness/sync/d;
.end method
