.class final Lcom/google/android/location/activity/bo;
.super Lcom/google/android/location/activity/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/location/activity/bo;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bp;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/bk;B)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bo;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/location/activity/bo;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bs;

    iget-object v2, p0, Lcom/google/android/location/activity/bo;->a:Lcom/google/android/location/activity/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bs;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Off"

    return-object v0
.end method
