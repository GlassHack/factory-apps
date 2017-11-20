.class Lcom/google/glass/maps/MapHelper$7;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/maps/MapHelper;->postFlushQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/maps/MapHelper;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$7;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$7;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0}, Lcom/google/glass/maps/MapHelper;->access$1300(Lcom/google/glass/maps/MapHelper;)V

    .line 501
    return-void
.end method
