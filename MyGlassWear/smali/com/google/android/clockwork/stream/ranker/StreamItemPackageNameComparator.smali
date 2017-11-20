.class public final Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;
.super Ljava/lang/Object;
.source "StreamItemPackageNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/clockwork/stream/StreamItem;",
        ">;"
    }
.end annotation


# static fields
.field private static PACKAGE_RANKING:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageNameComparator"

.field private static UNKNOWN_PACKAGE:Ljava/lang/String;

.field private static UNKNOWN_PACKAGE_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "unknown_package"

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->updatePackageList()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageNameIndex(Ljava/lang/String;)I
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE_INDEX:I

    goto :goto_0
.end method

.method private static setPackageList([Ljava/lang/String;)V
    .locals 4
    .param p0, "list"    # [Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 45
    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    aget-object v2, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    sget-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE_INDEX:I

    .line 53
    :goto_1
    return-void

    .line 51
    :cond_1
    sget-object v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->PACKAGE_RANKING:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE_INDEX:I

    goto :goto_1
.end method

.method public static updatePackageList()V
    .locals 4

    .prologue
    .line 28
    sget-object v2, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_UNKNOWN_PACKAGE:Lcom/google/android/gsf/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/gsf/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->UNKNOWN_PACKAGE:Ljava/lang/String;

    .line 29
    sget-object v2, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_SEPARATOR:Lcom/google/android/gsf/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/gsf/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "separator":Ljava/lang/String;
    sget-object v2, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING:Lcom/google/android/gsf/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/gsf/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string v2, "PackageNameComparator"

    const-string v3, "Using package list from deprecated key."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v2, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_DEPRECATED:Lcom/google/android/gsf/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/gsf/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 35
    .restart local v0    # "list":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const-string v2, "PackageNameComparator"

    const-string v3, "Couldn\'t find package ranking in gservices."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->setPackageList([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 3
    .param p1, "streamItem1"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "streamItem2"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 57
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->getPackageNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "index1":I
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->getPackageNameIndex(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "index2":I
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/clockwork/stream/StreamItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/stream/ranker/StreamItemPackageNameComparator;->compare(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    return v0
.end method
