.class public final Lcom/google/android/location/places/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/c/k;


# instance fields
.field private final a:Lcom/google/android/location/places/a;


# direct methods
.method private constructor <init>(Lcom/google/android/location/places/a;)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/google/android/location/places/ak;->a:Lcom/google/android/location/places/a;

    .line 622
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/location/places/a;B)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/google/android/location/places/ak;-><init>(Lcom/google/android/location/places/a;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 614
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/location/places/ak;->a:Lcom/google/android/location/places/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/location/places/a;->a(ILjava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 631
    const-string v0, "Places"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "Places"

    const-string v1, "Query suggestion request callback failed"

    const-string v2, "%s: %s\n%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/location/o/x;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ak;->a:Lcom/google/android/location/places/a;

    const/4 v1, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/places/a;->a(ILjava/util/List;)V

    .line 637
    return-void
.end method
