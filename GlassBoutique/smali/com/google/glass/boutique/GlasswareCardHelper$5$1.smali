.class Lcom/google/glass/boutique/GlasswareCardHelper$5$1;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/GlasswareCardHelper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/boutique/GlasswareCardHelper$5;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareCardHelper$5;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    iget-object v1, v1, Lcom/google/glass/boutique/GlasswareCardHelper$5;->val$timelineItemId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$900(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    iget-object v0, v0, Lcom/google/glass/boutique/GlasswareCardHelper$5;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    iget-object v1, v1, Lcom/google/glass/boutique/GlasswareCardHelper$5;->val$timelineItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;->this$1:Lcom/google/glass/boutique/GlasswareCardHelper$5;

    iget v2, v2, Lcom/google/glass/boutique/GlasswareCardHelper$5;->val$retryAttempt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$1000(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;I)V

    .line 274
    :cond_0
    return-void
.end method
