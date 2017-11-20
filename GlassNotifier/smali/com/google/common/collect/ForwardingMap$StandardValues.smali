.class public Lcom/google/common/collect/ForwardingMap$StandardValues;
.super Lcom/google/common/collect/Maps$Values;
.source "ForwardingMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ForwardingMap;

    .prologue
    .line 238
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardValues;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 239
    return-void
.end method
