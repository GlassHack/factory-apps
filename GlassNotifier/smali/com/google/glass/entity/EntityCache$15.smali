.class Lcom/google/glass/entity/EntityCache$15;
.super Landroid/database/ContentObserver;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/boutique/BoutiqueQueryHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$15;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 497
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received broadcast that entity db changed, requesting reload of entity cache [uri=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$15;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->access$200(Lcom/google/glass/entity/EntityCache;)V

    .line 500
    return-void
.end method
