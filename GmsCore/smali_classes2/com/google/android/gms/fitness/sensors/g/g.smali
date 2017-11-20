.class final Lcom/google/android/gms/fitness/sensors/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/g/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 6

    .prologue
    .line 246
    check-cast p1, Lcom/google/android/gms/wearable/m;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    const-string v1, "manufacturer"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 246
    check-cast p1, Lcom/google/android/gms/fitness/data/Device;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "manufacturer"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "model"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "version"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
