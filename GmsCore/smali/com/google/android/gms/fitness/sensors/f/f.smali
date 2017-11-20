.class final Lcom/google/android/gms/fitness/sensors/f/f;
.super Lcom/google/android/gms/fitness/h/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/e;

.field final synthetic c:Lcom/google/c/j/a/ad;

.field final synthetic d:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/internal/e;Lcom/google/c/j/a/ad;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/f;->d:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/f/f;->b:Lcom/google/android/gms/fitness/internal/e;

    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/f/f;->c:Lcom/google/c/j/a/ad;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 145
    const-string v0, "Couldn\'t connect to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/f/f;->d:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v3, v3, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/f;->c:Lcom/google/c/j/a/ad;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method protected final synthetic a(Landroid/os/IInterface;)V
    .locals 4

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/gms/fitness/internal/service/c;

    const-string v0, "Connected to application sensor service %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/f/f;->d:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v3, v3, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/f;->b:Lcom/google/android/gms/fitness/internal/e;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/fitness/internal/service/c;->a(Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;Lcom/google/android/gms/fitness/internal/e;)V

    return-void
.end method
