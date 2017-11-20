.class public final Lcom/google/android/location/activity/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/a/o;


# instance fields
.field private a:Lcom/google/android/location/activity/a/o;

.field private b:Lcom/google/android/location/activity/a/o;


# direct methods
.method public constructor <init>(ZF)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/location/activity/a/z;

    invoke-direct {v0, p1}, Lcom/google/android/location/activity/a/z;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/a/aa;->a:Lcom/google/android/location/activity/a/o;

    .line 32
    new-instance v0, Lcom/google/android/location/activity/a/ab;

    invoke-direct {v0, p2}, Lcom/google/android/location/activity/a/ab;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/location/activity/a/aa;->b:Lcom/google/android/location/activity/a/o;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 54
    const-wide v0, 0x9502f900L

    return-wide v0
.end method

.method public final a(JJLjava/util/List;)Ljava/util/List;
    .locals 7

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/location/activity/a/aa;->a:Lcom/google/android/location/activity/a/o;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/location/activity/a/o;->a(JJLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/android/location/activity/a/aa;->b:Lcom/google/android/location/activity/a/o;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/location/activity/a/o;->a(JJLjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-object v2
.end method
