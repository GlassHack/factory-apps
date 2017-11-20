.class abstract Lcom/google/android/gms/fitness/d/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/d/a/a/b;


# instance fields
.field protected a:Lcom/google/android/gms/fitness/data/Device;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/d/a/a/a;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/a;->a:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/fitness/d/a/a/a;->a:Lcom/google/android/gms/fitness/data/Device;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/fitness/data/Device;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/fitness/d/a/a/a;->a:Lcom/google/android/gms/fitness/data/Device;

    .line 34
    return-void
.end method
