.class final Lcom/google/android/gms/fitness/f/k;
.super Lcom/google/android/gms/fitness/f/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/j;

.field final synthetic b:Lcom/google/android/gms/fitness/f/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/f/j;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gms/fitness/f/k;->b:Lcom/google/android/gms/fitness/f/j;

    iput-object p2, p0, Lcom/google/android/gms/fitness/f/k;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/f/n;->a(Landroid/os/Bundle;)V

    .line 103
    iget-object v2, p0, Lcom/google/android/gms/fitness/f/k;->b:Lcom/google/android/gms/fitness/f/j;

    iget-object v3, p0, Lcom/google/android/gms/fitness/f/k;->a:Lcom/google/android/gms/common/api/j;

    const-string v0, "/fitness/WearableAccountManager/all_accounts"

    invoke-static {v0}, Lcom/google/android/gms/wearable/w;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/w;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/f/a;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/wearable/m;

    invoke-direct {v6}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/google/android/gms/wearable/m;

    invoke-direct {v8}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v1, v11}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v0, v8}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v6}, Lcom/google/android/gms/wearable/m;->a(Lcom/google/android/gms/wearable/m;)V

    sget-object v0, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/w;->a()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/f/l;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/fitness/f/l;-><init>(Lcom/google/android/gms/fitness/f/j;Lcom/google/android/gms/common/api/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 104
    return-void
.end method
