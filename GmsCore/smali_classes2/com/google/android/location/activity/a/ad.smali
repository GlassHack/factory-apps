.class public final Lcom/google/android/location/activity/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/a/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 31
    const-wide/32 v0, 0x1ad27480

    return-wide v0
.end method

.method public final a(JJLjava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lcom/google/android/location/activity/a/s;

    sget-object v2, Lcom/google/android/location/activity/a/t;->h:Lcom/google/android/location/activity/a/t;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method
