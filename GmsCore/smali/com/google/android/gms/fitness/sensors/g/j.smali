.class final Lcom/google/android/gms/fitness/sensors/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/g/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/g/i;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/g/j;->a:Lcom/google/android/gms/fitness/sensors/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 3

    .prologue
    .line 244
    check-cast p1, Lcom/google/android/gms/wearable/u;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/u;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/j;->a:Lcom/google/android/gms/fitness/sensors/g/i;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/s;

    iput-object v0, v1, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    :cond_0
    return-void
.end method
