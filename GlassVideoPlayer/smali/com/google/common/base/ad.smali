.class final Lcom/google/common/base/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/common/base/ad;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/google/common/base/ae;

    invoke-direct {v0, p0}, Lcom/google/common/base/ae;-><init>(Lcom/google/common/base/ad;)V

    return-object v0
.end method
