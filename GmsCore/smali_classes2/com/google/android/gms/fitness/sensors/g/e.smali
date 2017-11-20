.class final Lcom/google/android/gms/fitness/sensors/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/g/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 3

    .prologue
    .line 147
    check-cast p1, Lcom/google/android/gms/wearable/m;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->d:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v2, "dataType"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/fitness/data/h;->b:I

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->e:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v2, "device"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Device;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->a:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v2, "application"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Application;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const-string v0, "streamName"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 147
    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "dataType"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->d:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "device"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->e:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "application"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->a:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "streamName"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
