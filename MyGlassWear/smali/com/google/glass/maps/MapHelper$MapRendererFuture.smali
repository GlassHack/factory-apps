.class Lcom/google/glass/maps/MapHelper$MapRendererFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapRendererFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->id:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public interruptTask()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->this$0:Lcom/google/glass/maps/MapHelper;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/maps/MapHelper;->access$000(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 78
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->set([B)Z

    move-result v0

    return v0
.end method

.method protected set([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
