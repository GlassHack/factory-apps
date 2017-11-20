.class public final Lcom/google/android/location/activity/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Lcom/google/android/location/activity/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/a/a/b;->a:J

    .line 41
    new-instance v0, Lcom/google/android/location/activity/a/a/a;

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "AllTreesForPosition"

    const-string v2, "Creating trees for phone position."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/location/activity/a/a/e;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/e;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/f;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/f;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/g;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/g;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/h;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/h;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/i;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/i;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/j;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/j;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/k;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/k;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/l;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/l;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/m;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/m;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/location/activity/a/a/n;

    invoke-direct {v2}, Lcom/google/android/location/activity/a/a/n;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1}, Lcom/google/android/location/activity/a/a/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/location/activity/a/a/b;->b:Lcom/google/android/location/activity/a/a/a;

    return-void
.end method
