.class final Lcom/google/android/location/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/v;


# direct methods
.method constructor <init>(Lcom/google/android/location/v;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/location/w;->a:Lcom/google/android/location/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 312
    check-cast p1, Lcom/google/g/a/b/b/a;

    check-cast p2, Lcom/google/g/a/b/b/a;

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    invoke-virtual {p2, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v6

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    :cond_0
    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    move-wide v4, v2

    goto :goto_0

    :cond_3
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_1
.end method
