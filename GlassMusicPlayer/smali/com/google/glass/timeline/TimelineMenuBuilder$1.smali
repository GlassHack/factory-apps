.class Lcom/google/glass/timeline/TimelineMenuBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuBuilder;

.field final synthetic val$error:Lcom/google/glass/app/GlassError;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuBuilder;Lcom/google/glass/app/GlassError;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder$1;->this$0:Lcom/google/glass/timeline/TimelineMenuBuilder;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuBuilder$1;->val$error:Lcom/google/glass/app/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder$1;->val$error:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder$1;->this$0:Lcom/google/glass/timeline/TimelineMenuBuilder;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->access$000(Lcom/google/glass/timeline/TimelineMenuBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 529
    const/4 v0, 0x1

    return v0
.end method
