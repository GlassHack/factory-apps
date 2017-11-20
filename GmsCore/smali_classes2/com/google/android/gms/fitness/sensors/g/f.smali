.class final Lcom/google/android/gms/fitness/sensors/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/g/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 199
    check-cast p1, Lcom/google/android/gms/wearable/m;

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "fields"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/m;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    new-instance v3, Lcom/google/android/gms/fitness/data/Field;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    new-instance v1, Lcom/google/android/gms/fitness/data/DataType;

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 199
    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    new-instance v4, Lcom/google/android/gms/wearable/m;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/m;-><init>()V

    const-string v5, "name"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "format"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "fields"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
