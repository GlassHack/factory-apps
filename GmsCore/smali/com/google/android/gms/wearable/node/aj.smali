.class public final Lcom/google/android/gms/wearable/node/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/w;


# static fields
.field public static a:Lcom/google/android/gms/wearable/node/aj;


# instance fields
.field public b:Lcom/google/android/gms/wearable/node/h;

.field public final c:Ljava/util/Map;

.field public d:Lcom/google/android/gms/wearable/node/ax;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/aj;->b:Lcom/google/android/gms/wearable/node/h;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/node/x;)V
    .locals 4

    .prologue
    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/wearable/node/x;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "NodeService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "NodeService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addConnectedNode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/aj;->b:Lcom/google/android/gms/wearable/node/h;

    .line 72
    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/node/h;->a(Lcom/google/android/gms/wearable/c/i;)V

    .line 75
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/i;

    .line 80
    const-string v1, "NodeService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "NodeService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeConnectedNode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/aj;->b:Lcom/google/android/gms/wearable/node/h;

    .line 87
    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/node/h;->b(Lcom/google/android/gms/wearable/c/i;)V

    .line 91
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
