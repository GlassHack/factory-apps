.class Lcom/google/android/pano/util/TransitionImageMatcher;
.super Ljava/lang/Object;
.source "TransitionImageMatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/pano/util/TransitionImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)I
    .locals 3
    .param p1, "lhs"    # Lcom/google/android/pano/util/TransitionImage;
    .param p2, "rhs"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    move-object v0, v1

    .line 17
    .local v0, "l":Landroid/net/Uri;
    :goto_0
    if-nez p2, :cond_1

    .line 18
    .local v1, "r":Landroid/net/Uri;
    :goto_1
    if-nez v0, :cond_3

    .line 19
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 24
    :goto_2
    return v2

    .line 16
    .end local v0    # "l":Landroid/net/Uri;
    .end local v1    # "r":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/pano/util/TransitionImage;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 17
    .restart local v0    # "l":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/pano/util/TransitionImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 19
    .restart local v1    # "r":Landroid/net/Uri;
    :cond_2
    const/4 v2, -0x1

    goto :goto_2

    .line 21
    :cond_3
    if-nez v1, :cond_4

    .line 22
    const/4 v2, 0x1

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v2

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Lcom/google/android/pano/util/TransitionImage;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/pano/util/TransitionImage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/util/TransitionImageMatcher;->compare(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)I

    move-result v0

    return v0
.end method
