.class public final Lcom/google/android/gms/fitness/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->h:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/d/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method
