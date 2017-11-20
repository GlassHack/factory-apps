.class public Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SubscribeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private EN:Lcom/google/android/gms/fitness/data/Subscription;

.field private EO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EO:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)Lcom/google/android/gms/fitness/data/Subscription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EO:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SubscribeRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must call setSubscription()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;-><init>(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;Lcom/google/android/gms/fitness/request/SubscribeRequest$1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServerOnly(Z)Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;
    .locals 0
    .param p1, "serverOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EO:Z

    return-object p0
.end method

.method public setSubscription(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;
    .locals 0
    .param p1, "subscription"    # Lcom/google/android/gms/fitness/data/Subscription;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    return-object p0
.end method
