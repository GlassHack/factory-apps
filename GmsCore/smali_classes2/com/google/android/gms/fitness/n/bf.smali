.class final Lcom/google/android/gms/fitness/n/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/j;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/n/az;B)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/bf;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 671
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-static {v0}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/n/az;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 674
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 674
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/bf;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/google/android/gms/fitness/n/bf;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
