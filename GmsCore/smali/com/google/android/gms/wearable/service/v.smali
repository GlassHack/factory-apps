.class final Lcom/google/android/gms/wearable/service/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/as;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/v;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;B)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/service/v;-><init>(Lcom/google/android/gms/wearable/service/WearableService;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/wearable/node/a;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8

    .prologue
    .line 428
    const-string v0, "WearableService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/wearable/service/v;->a:Lcom/google/android/gms/wearable/service/WearableService;

    new-instance v0, Lcom/google/android/gms/wearable/service/w;

    const-string v2, "onMessageReceived"

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wearable/service/w;-><init>(Lcom/google/android/gms/wearable/service/v;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)V

    invoke-static {v7, p2, v0}, Lcom/google/android/gms/wearable/service/WearableService;->a(Lcom/google/android/gms/wearable/service/WearableService;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/x;)V

    .line 451
    return-void
.end method
